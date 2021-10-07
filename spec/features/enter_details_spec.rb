feature 'Enter details' do
  scenario 'welcome message' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
    expect(page).to have_content 'Please enter your birthday'
  end
end