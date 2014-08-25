require 'spec_helper'

describe Vault do
  context 'factorty validation' do
    let(:vault) { build :vault }

    subject { vault }

    describe 'testing validations' do
      it { should be_valid }
      it { expect(subject.save).to be_truthy }

      context 'attributes_for' do
        it { expect { attributes_for(:vault) }.to_not raise_error }
      end

      context 'build_stubbed' do
        it { expect { build_stubbed(:vault) }.to_not raise_error }
      end
    end
  end

  context 'with user' do
    let(:vault) { create :vault }
    let!(:user) { create :user, vault: vault }

    specify('can be remove last user') do
      expect { vault.destroy }.to_not change(User, :count)
    end

    specify('can remove all users') do
      expect { vault.remove_all_users! }.to change(User, :count).by(-1)
    end
  end
end
