Quando ('entrar em contato pelo formulário da home') do
    contact_data = Factory::Dynamic.message_for_contact
    @home_page.sende_message_contact_us(contact_data)
end
        
Então ('deverá ser apresentado um modal de mensagem enviada') do
    expect(@home_page).to have_success_message
end