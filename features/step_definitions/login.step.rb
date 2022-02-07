

Dado('digito as credencias na pagina teste') do
    visit 'http://www.aprendendotestar.com.br/treinar-automacao.php'
end

Quando('eu faço login com {string}, {string} e {string}') do |usuario, senha, nome|
    find('input[name=form_usuario').set usuario
    find('input[name=form_senha').set senha
    find('input[name=form_nome').set nome
    click_button 'Enviar'

end

Entao('As credenciais ficam gravadas na pagina teste') do
    expect(page).to have_content 'teste1'
end

Quando('eu faço login com {string} e {string}') do |usuario, senha|
    find('input[name=form_usuario').set usuario
    find('input[name=form_senha').set senha
    click_button 'Enviar'

end

Entao('Devo ver a mensagem {string}') do |mensagem|
expect(page).to have_content 'Existem campos em branco.'

end