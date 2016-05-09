describe 'Verify Add Contact' do
  context 'free plan' do
    before(:all) do
      @email = Faker::Internet.email

      visit HomePage do |page|
        page.my_account
      end

      on SigninPage do |page|
        page.sign_up
      end

      on SignupPage do |page|
        page.input_user_details(
          email: @email,
          password: 'Test123'
        )
        page.home
      end

      #visit MyContactsPage do |page|
       # page.my_contacts 
      #end

      visit MyContactsPage do |page|
        page.add_contact
      end

      on AddContactPage do |page|
        page.input_contact_details(
          firstname: @firstname,
          lastname: @lastname,
          street: @street,
          city: @city,
          state: @state,
          zipcode: @zipcode,
          cellphone: @cellphone,
          homephone: @homephone,
          fax: @fax,
          notes: @notes
        ) 
        page.my_contacts
      end
    end  

    it "Herp" do
      on MyContactsPage do |page|
        expect(page.content_div).to include ("Derpington")
      end
    end    
   

    #it 'currently signed in' do
     # on HomePage do |page|
      #  expect(page.content_div).to include("Currently sign in as #{@email}")
      #end
    #end

    after(:all) do
      visit EditUserPage do |page|
        page.cancel_and_confirm
      end
    end
  end
end
