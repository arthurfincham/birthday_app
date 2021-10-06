feature 'Enter names' do
  scenario 'welcome message' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
    expect(page).to have_content 'Please enter your birthday'
  end

  scenario 'submitting names' do
    visit('/')
    fill_in :name, with: 'Charlotte'
    page.select '9', from: 'day'
    expect(page).to have_select('day')
    page.select 'Jan', from: 'month'
    expect(page).to have_select('month')
    click_button 'Submit'
  end
end