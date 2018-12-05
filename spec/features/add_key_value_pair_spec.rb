feature '/set?' do
  scenario 'user can add a key-value pair to the memory' do
    visit '/set?name=Tom'
    expect(page).to have_content 'name'
    expect(page).to have_content 'Tom'
  end
end
