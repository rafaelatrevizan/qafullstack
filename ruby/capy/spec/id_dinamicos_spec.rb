describe "Ids Dinamicos", :login4 do
  before(:each) do
    visit "access"
  end

  it "Cadastro" do
    # find("#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput").set "rafaela"
    # find("#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt").set "123456"
    # find("#PortalTheme_wt4_block_wtGetStartedButton_wtcontent_holder_OSCore_wt3_block").click

    # $ => termina com
    # ^ => começa com
    # * => contém

    find("input[id$=UsernameInput]").set "rafaela"
    find("input[id^=PasswordInput").set "123456"
    find("a[id*=GetStartedButton]").click
    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"

    sleep 3
  end
end
