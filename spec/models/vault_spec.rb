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
end
