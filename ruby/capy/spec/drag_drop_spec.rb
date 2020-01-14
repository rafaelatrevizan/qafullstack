describe 'Drag and Drop', :drag do

    before(:each) do
        visit 'drag_and_drop'
    end

    it 'Homem aranha pertence ao time do stark' do
        # stark = find('.team-stark .column')
        stark = find(:xpath, '//div[contains(@class, "team-stark")]/h5/div')
        cap = find(:xpath, '//div[contains(@class, "team-cap")]/h5/div')

        spider = find('img[alt$=Aranha]')

        spider.drag_to stark

        expect(stark).to have_css 'img[alt$=Aranha]'
        expect(cap).not_to have_css 'img[alt$=Aranha]'

        sleep 5
    end
end