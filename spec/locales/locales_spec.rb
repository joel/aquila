require 'spec_helper'

describe "#locales" do

  Dir.glob('config/locales/**/*.yml') do |locale_file|
    describe "#{locale_file}" do
      it_behaves_like 'a valid locale file' do
        let(:locale_file) { locale_file }
      end
    end
  end

  Dir.glob('config/locales/**/*en.yml') do |locale_file|
    describe "#{locale_file}" do
      it_behaves_like 'complete translation of' do
        let(:locale_source) { locale_file }
        let(:locale_target) { locale_file.gsub('en','fr') }
      end
    end
  end
end