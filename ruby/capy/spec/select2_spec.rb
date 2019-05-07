describe 'Select2', :select2 do

  
    describe('single') do

            before(:each) do
                visit '/apps/select2/single.html'
            end 

    end
   

    describe('multiple') do
        
            before(:each) do
                visit '/apps/select2/multi.html'
            end   

    end



end