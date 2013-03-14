require 'spec_helper'

describe 'venues' do

  describe 'GET /venues/new' do
    it 'displays a new venue form', :js => true do
      visit root_path
      click_link('New Venue')
      page.should have_link('Cancel')
      page.should have_button('Save')
    end
  end

  describe 'POST /venues' do
    it 'should create a new venue', :js => true do
      visit root_path
      click_link('New Venue')
      fill_in('Name', :with => 'Terminal 5')
      click_button('Save')
      page.should_not have_button('Save')
      page.should have_text('Terminal 5')
      expect(Venue.first.name).to eq 'Terminal 5'
    end
  end

  describe 'JS cancel_subscriber_form()' do
    it 'removes the new concert form', :js => true do
      visit root_path
      click_link('New Concert')
      click_link('Cancel')
      page.should_not have_button('Save')
    end
  end
end

describe 'concerts' do

  describe 'GET /concerts/new' do
    it 'displays a new concert form', :js => true do
      visit root_path
      click_link('New Concert')
      page.should have_link('Cancel')
      page.should have_button('Save')
    end
  end

  describe 'POST /concerts' do

    it 'should create a new concert', :js => true do
      visit root_path
      click_link('New Venue')
      fill_in('Name', :with => 'Terminal 5')
      click_button('Save')

      click_link('New Concert')
      fill_in('Name', :with => 'Total Package')
      fill_in('concert_concert_date', :with => '2013-10-14')
      select( 'Terminal 5', :from => 'venues_select')
      click_button('Save')
      page.should_not have_button('Save')
      page.should have_text('Terminal 5')
      page.should have_text('Total Package')
      expect(Concert.first.name).to eq 'Total Package'
    end
  end

  describe 'JS cancel_subscriber_form()' do
    it 'removes the new concert form', :js => true do
      visit root_path
      click_link('New Concert')
      click_link('Cancel')
      page.should_not have_button('Save')
    end
  end

end