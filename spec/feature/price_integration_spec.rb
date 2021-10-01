require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 10.99
    select 'Jan 1, 1997'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(10.99)
  end
end
