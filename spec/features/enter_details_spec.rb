feature 'Enter names' do
  scenario 'welcome message' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
    expect(page).to have_content 'Please enter your birthday'
  end

  scenario 'submitting names' do
    visit('/')
    fill_in :name, with: 'Charlotte'
    fill_in :date, with: '1997-09-01'
    click_button 'Submit'
  end
end