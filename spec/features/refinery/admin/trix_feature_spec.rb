require 'rails_helper'

RSpec.describe 'trix', :type => :feature do
  before do
    allow(Refinery::I18n).to receive(:frontend_locales).and_return [:en, :ru]
    # Create a page in both locales
    about_page = Mobility.with_locale(:en) do
      Refinery::Page.create :title => 'About'
    end

    Mobility.with_locale(:ru) do
      about_page.title = 'About Ru'
      about_page.save
    end
  end

  let(:about_page) do
    page = Refinery::Page.last
    # we need page parts so that there's a visual editor
    Refinery::Pages.default_parts.each_with_index do |default_page_part, index|
      page.parts.create(title: default_page_part[:title], slug: default_page_part[:slug], :body => nil, :position => index)
    end
    page
  end

  scenario 'load trix resource', js: true do
    visit refinery.edit_admin_page_path(about_page)

    expect(page.body).to match('trix.*.js')
    expect(page.body).to match('trix.*.css')
  end

  scenario 'visit the refinery admin page', js: true do
    visit refinery.edit_admin_page_path(about_page)
    expect(page).to have_selector("trix-toolbar")
    expect(page).to have_selector("trix-editor")
  end
end
