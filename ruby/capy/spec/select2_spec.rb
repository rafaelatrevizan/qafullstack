describe 'Select2', :select2 do

  
    describe('single', :single) do

            before(:each) do
                visit 'apps/select2/single.html'
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
                visit 'apps/select2/multi.html'
            end   

            def seleciona(ator)
               find('.select2-selection--multiple').click
               find('.select2-search__field').set ator
               find('.select2-results__option').click                
            end

            it 'selecionar atores' do

               atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James']
                
               atores.each do |a|
                seleciona(a)
               end  
                sleep 2
            end

    end
end