class CadastroPage  < SitePrism::Page
#--------------------Url-----------------------------------#
    #complemento da página informa o email.    
    set_url '?controller=authentication&back=my-account'       
#--------------------Element-------------------------------#
    element :email_create_account_field,'#email_create'
    element :create_account_btn,        '#SubmitCreate'
    element :title_fem_rd,              '#uniform-id_gender2'
    element :title_masc_rd,             '#uniform-id_gender1'
    element :firt_name_field,           '#customer_firstname'
    element :last_name_field,           '#customer_lastname'
    element :email_field,               '#email'
    element :password_field,            '#passwd'
    element :day_select,                '#uniform-days'
    element :month_select,              '#uniform-months'
    element :year_select,               '#uniform-years'
    element :newsletter_checkbox,       '#uniform-newsletter'
    element :address_field,             '#address1'
    element :city_field,                '#city'
    element :state_select,              '#uniform-id_state'
    elements :state_options,            '#uniform-id_state option'
    element :zip_code_field,            '#postcode'    
    element :mobile_field,              '#phone_mobile'
    element :address_alias_field,       '#alias'
    element :register_btn,              '#submitAccount'
#-------------------Method----------------------------------#

    def iniciar_criacao_conta(email)
        puts @email = email.eql?('aleatório') ? Faker::Internet.email(domain: 'guts') : email       
        email_create_account_field.set @email       
        create_account_btn.click
    end
    
    def preencher_form_com_dados_fixos      
        title_fem_rd.set true
        @@first_name = 'flavio'
        firt_name_field.set @@first_name
        @@last_name = 'souza'
        last_name_field.set @@last_name 
        email_field.set     'flavisoo2@souza.hotmail.com'
        password_field.set  '123456'
        day_select.select   '14'
        month_select.select 'June'
        year_select.select  '1995'
        newsletter_checkbox.set true
        address_field.set   'Rua A, 15'
        city_field.set      'Porto Alegre'
        state_select.click
        option = state_options.find {|option| option.text.include?("Alaska")}
        option.click
        zip_code_field.set '55665'
        mobile_field.set   '5199999999'
        address_alias_field.set 'Casa'      
    end

    def preencher_form_com_dados_aleatorios
        title_fem_rd.set true
        @@first_name = Faker::Name.first_name
        firt_name_field.set @@first_name
        @@last_name = Faker::Name.last_name
        last_name_field.set @@last_name         
        password_field.set  Faker::Internet.password(min_length: 5, max_length: 10, mix_case: true, special_characters: true)
        day_select.select   '14'
        month_select.select 'June'
        year_select.select  '1995'
        newsletter_checkbox.set true
        address_field.set   'Rua A, 15'
        city_field.set      'Porto Alegre'
        state_select.click
        option = state_options.find {|option| option.text.include?("Alaska")}
        option.click
        zip_code_field.set '55665'
        mobile_field.set   Faker::PhoneNumber.cell_phone_in_e164 
        address_alias_field.set 'Casa'       
    end
   
    def preencher_form_com_dados_de_exemplos(gender, first_name, last_name, password, day, month, year, newsletter, company, address, city, state, zipcode, mobilephone, address_name )
        gender.eql?('fem') ? title_fem_rd.set(true) : title_masc_rd.set(true)        
        @@first_name = first_name
        firt_name_field.set @@first_name
        @@last_name = last_name
        last_name_field.set @@last_name         
        password_field.set  password
        day_select.select   day
        month_select.select month
        year_select.select  year
        unless newsletter.eql?('no') 
            newsletter_checkbox.click
        end
        address_field.set address
        city_field.set city
        state_select.click
        option = state_options.find {|option| option.text.include?(state)}
        option.click
        zip_code_field.set zipcode
        mobile_field.set   mobilephone
        address_alias_field.set address_name
    end

    def confirmar_cadastro
        register_btn.click        
    end

    def account_full_name        
        "#{@@first_name} #{@@last_name}"
    end
#---------------------------------------------------------#

end