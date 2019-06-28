describe 'Select2', :select2 do

  
    describe('single', :single) do

            before(:each) do
                visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
            end 

            it 'seleciona ator por nome' do
                find('.select2-selection--single').click
                
                find('.select2-results__option', text: 'Adam Sandler').click
                
            end

            it 'seleciona ator por nome pela busca' do
                find('.select2-selection--single').click
                
                find('.select2-search__field').set('Chris Rock')
                
                find('.select2-results__option').click
                
            end

    end
   

    describe('multiple', :multi) do
        
            before(:each) do
                visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
            end   

            it 'seleciona atores' do
               find('.select2-selection--multiple').click
               sleep 1
            end

            it 'seleciona atores por nome pela busca' do
                find('.select2-selection--multiple').click
                
                
            end

    end
end