require 'spec_helper'

describe User do
  context 'factorty validation' do
    let(:user) { build :user }

    subject { user }

    context 'without vault' do
      before { user.vault = nil }
      it { should_not be_valid }
    end

    context 'without vault invalid' do
      before { user.vault.subdomain = nil }
      it { should_not be_valid }
    end

    describe 'testing validations' do
      it { should be_valid }
      it { expect(subject.save).to be_truthy }

      context 'attributes_for' do
        it { expect { attributes_for(:user) }.to_not raise_error }
      end

      context 'build_stubbed' do
        it { expect { build_stubbed(:user) }.to_not raise_error }
      end
    end
  end

  context 'destroy' do
    let(:user) { create :user }

    context 'with only one remained user' do
      it 'should not remove user' do
        expect(user.vault.users.count).to eql 1
        expect {
          user.vault.users.first.destroy
        }.to raise_error
      end
    end

    context 'with one more one user' do
      it 'should be remove user' do
        user.vault.users << create(:user)
        expect(user.vault.users.count).to eql 2
        expect {
          user.vault.users.first.destroy
        }.to change(User, :count).by(-1)
      end
    end
  end
end
