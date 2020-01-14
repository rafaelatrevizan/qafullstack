describe "Tabelas", :tabs, :smoke do
  before(:each) do
    visit "tables"
  end

  it "exibir salário do tony" do
    atores = all("table tbody tr")
    stark = atores.detect { |ator| ator.text.include?("Robert Downey Jr") }
    # puts stark.text
    expect(stark.text).to include "10.000.000"
  end

  it "exibir salário do vin diesel" do
    #Ou poderia passar o instagram
    diesel = find("table tbody tr", text: "Vin Diesel")
    expect(diesel).to have_content "10.000.000"
  end

  it "deve exibir o filme velozes" do
    diesel = find("table tbody tr", text: "Vin Diesel")
    movie = diesel.all("td")[2].text
    expect(movie).to eql "Velozes e Furiosos"
  end

  it "deve exibir o insta do Chris Evans" do
    chris = find("table tbody tr", text: "Chris Evans")
    insta = chris.all("td")[4].text
    expect(insta).to eql "@teamcevans"
  end

  it "deve selecionar Chris Prar para remoção" do
    chrisp = find("table tbody tr", text: "Chris Prat")
    chrisp.find("a", text: "delete").click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Chris Pratt foi selecionado para remoção!"
  end

  it "deve selecionar Chris Prar para edição" do
    chrisp = find("table tbody tr", text: "Chris Prat")
    chrisp.find("a", text: "edit").click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Chris Pratt foi selecionado para edição!"
  end
end
