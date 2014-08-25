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

    unless (request = User.where({email: 'demo@example.com'})).exists?
      conditions = {email: 'demo@example.com', password: 'secret', password_confirmation: 'secret', vault: vault}
      User.create!(conditions).tap { |user| user.confirm! }
    end

    user = request.first
    user.vault = vault
    user.save!

    ['facebook.com', 'twitter', 'linkedin'].each do |name|
      conditions = { name: name, link: "http://www.#{name}", login: 'demo@example.com', password: SecureRandom.uuid }
      vault.goldbricks.create!(conditions)
    end
  end
end
