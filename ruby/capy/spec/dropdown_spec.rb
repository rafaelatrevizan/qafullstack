describe 'Caixa de opções', :dropdown do

    it 'item específico simples' do
        visit 'dropdown'

        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'item específico com o find' do
        visit 'dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item', :sample do
        visit 'dropdown'
        drop = find('.avenger-list')
        #não da pra usar o find pq tem mais de um elemento option na tela
        #a opção Sample escolhe de forma randomica
        drop.all('option').sample.select_option
        sleep 3
    end

end