describe 'Caixa de seleção', :upload do

    before(:each) do

        visit 'https://training-wheels-protocol.herokuapp.com/upload'

        #pwd = método que retorna o caminho que tem o diretório de execução
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/mickey.jpg'        
    end

    it 'upload com arquivo txt', :upload_arquivo do
        attach_file('file-upload', @arquivo)
        click_button 'Upload' 
        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload com imagem', :upload_imagem do
        attach_file('file-upload', @imagem)
        click_button 'Upload' 
        div_imagem = find('#new-image')
        expect(div_imagem[:src]).to include '/uploads/mickey.jpg'
    end

    after(:each) do
        sleep 3
    end

end