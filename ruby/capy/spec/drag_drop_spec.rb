describe 'Drag and Drop', :drag do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end

    it 'Homem aranha pertence ao tima do stark' do
        # stark = find('.team-stark .column')
        stark = find(:xpath, '//div[contains(@class, "team-stark")]/h5/div')

        spider = find('img[alt$=Aranha]')

        spider.drag_to stark

        sleep 5
    end
end