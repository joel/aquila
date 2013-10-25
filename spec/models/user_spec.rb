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
      it { subject.save.should be_true }

      context 'attributes_for' do
        it { expect { attributes_for(:user) }.to_not raise_error }
      end

      context 'build_stubbed' do
        it { expect { build_stubbed(:user) }.to_not raise_error }
      end
    end
  end
end
