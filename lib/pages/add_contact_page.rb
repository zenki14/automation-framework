class AddContactPage
  include PageObject

  link(:home, text: 'Home')
  link(:my_contacts, text: 'My Contacts')
  div(:menu_div, id: 'menu')

  text_field(:firstname, id: 'contact_first_name')
  text_field(:lastname, id: 'contact_last_name')
  text_field(:street, id: 'contact_street')
  text_field(:city, id: 'contact_city')
  text_field(:state, id: 'contact_state')
  text_field(:zipcode, id: 'contact_postal_code')
  text_field(:cellphone, id: 'contact_cell_phone')
  text_field(:homephone, id: 'contact_home_phone')
  text_field(:fax, id: 'contact_fax')
  text_field(:notes, id: 'contact_notes')
  button(:submit, id: 'contact_submit')

  	def input_contact_details (params = {})
  		firstname_element.when_present
  		self.firstname = params[:firstname] || 'Herp'
  		self.lastname = params[:lastname] || 'Derpington'
  		self.street = params[:street] || '123 Fake St'
  		self.city = params[:city] || 'Springfield'
  		self.state = params[:state] || 'AL'
  		self.zipcode = params[:zipcode] || '35216'
  		self.cellphone = params[:cellphone] || '(555)555-5555'
  		self.homephone = params[:homephone] || '(444)444-4444'
  		self.fax = params[:fax] || '(333)333-3333'
  		self.notes = params[:notes] || 'TEST NOTES'
  		submit
  	end 
end