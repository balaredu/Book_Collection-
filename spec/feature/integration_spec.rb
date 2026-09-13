require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do 
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        fill_in "book[author]", with: 'Jk Rowling'
        fill_in "book[price]", with: 10 
        select "2026", from: "book[published_date(1i)]"    # year
        select "September", from: "book[published_date(2i)]" # month
        select "12", from: "book[published_date(3i)]"       # day
        
        click_on 'Create Book'
        expect(page).to have_content('harry potter')
        expect(page).to have_content('Jk Rowling')
        expect(page).to have_content('10')
        expect(page).to have_content('2026-09-12')
    end 
end


RSpec.describe 'Creating a nil book', type: :feature do 
    scenario 'valid inputs' do
        visit new_book_path
        click_on 'Create Book'
        expect(page).to have_content("Enter in your text to add a book!")
    end 
end
