Quando('procurar por {string}') do |string|
    visit "/"
    fill_in "q", with: string
    click_on "Pesquisa Google", match: :first
end
  
Então('eu devo ver {string}') do |string|
    page.should have_content(string)
end