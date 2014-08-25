# Tasks runned by the heroku scheduler add-on

namespace :seeds do

  # run nightly
  desc <<-DESC
    Add and reset set of demo data
  DESC
  task demo: :environment do
    if (request = Vault.where({subdomain: 'demo'})).exists?
      vault = request.first
      vault.remove_all_users!
      vault.destroy
    end

    vault = Vault.create!({subdomain: 'demo'})
    if (request = User.where({email: 'demo@example.com'})).exists?
      request.first.destroy
    end

    conditions = {email: 'demo@example.com', password: 'secret', password_confirmation: 'secret', vault: vault}
    User.create!(conditions).tap { |user| user.confirm! }

    ['facebook.com', 'twitter', 'linkedin'].each do |name|
      conditions = {name: name, link: "http://www.#{name}", login: 'demo@example.com', password: SecureRandom.uuid}
      vault.goldbricks.create!(conditions)
    end
  end
end
