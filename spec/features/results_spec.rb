require 'timecop'

feature 'results' do

  before do
    visit('/')
    fill_in :name, with: 'Charlotte'
    page.select '9', from: 'day'
    expect(page).to have_select('day')
    page.select 'Jan', from: 'month'
    expect(page).to have_select('month')
    
  end

  scenario 'submitting names' do
    click_button 'SUBMIT'
    expect(page).to have_content 'Charlotte'
  end

  scenario 'birthday message' do
    Timecop.freeze(Time.local(2021, 1, 9))
    click_button 'SUBMIT'
    expect(page).to have_content 'Happy Birthday Charlotte !'
  end
end