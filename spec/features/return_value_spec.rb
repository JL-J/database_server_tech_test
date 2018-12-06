feature '/get?' do
  scenario 'user can retrieve a value from the memory when providing a key' do
    visit '/set?colour=red'
    visit '/get?key=colour'
    expect(page).to have_content 'red'
  end
end
