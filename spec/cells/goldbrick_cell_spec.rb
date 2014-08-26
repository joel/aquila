require 'spec_helper'

describe GoldbrickCell, type: :cell do

  context 'cell rendering' do
    context 'rendering show' do
      let(:goldbrick) { create :goldbrick }

      subject { render_cell(:goldbrick, :show, goldbrick: goldbrick) }

      it { is_expected.to have_selector('a', text: I18n.t('helpers.links.new')) }
      it { is_expected.to have_selector('a', text: I18n.t('helpers.links.back')) }
      it { is_expected.to have_selector('a', text: I18n.t('helpers.links.edit')) }
      it { is_expected.to have_selector('a', text: I18n.t('helpers.links.destroy')) }
      
    end
  end
end
