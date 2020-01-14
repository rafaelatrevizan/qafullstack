describe "Meu primeiro script", :hello, :smoke do
 

  it "visitar a página" do
    visit "/"
    sleep 3
    expect(page.title).to eql "Training Wheels Protocol"
  end
end
