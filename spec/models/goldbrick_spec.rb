require 'spec_helper'

describe Goldbrick do
  context 'factorty validation' do
    let(:goldbrick) { build :goldbrick }

    subject { goldbrick }

    describe 'testing validations' do
      it { should be_valid }
      it { subject.save.should be_truthy }

      context 'attributes_for' do
        it { expect { attributes_for(:goldbrick) }.to_not raise_error }
      end

      context 'build_stubbed' do
        it { expect { build_stubbed(:goldbrick) }.to_not raise_error }
      end
    end
  end
end
