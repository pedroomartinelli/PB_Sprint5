require_relative '../sections/header'

module Pages
    class Home < SitePrism::Page
        set_url '/'
        
        section :header, Sections::Header, 'header'
        element :loader, 'body > .loader'
        element :input_email_contact_us, 'input[name="emailContactUs"]'
        element :input_message_contact_us, 'textarea[name="subjectTextareaContactUs"]'
        element :btn_send_message_contact_us, '#send_btn' 
        element :success_message, '.successMessage'
        

        def search_for(product)
            header.click_and_input_text_for_search(product)
            wait_until_loader_visible
            wait_until_loader_invisible
            header.btn_open_search.click
            header.close_search.click
        end

        def sende_message_contact_us(message_data)
            input_email_contact_us.set message_data[:email]
            input_message_contact_us.set message_data[:message]
            btn_send_message_contact_us.click
        end
    end
end