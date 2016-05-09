class ContactUsPage
  include PageObject

  page_url 'http://ec2-54-191-181-182.us-west-2.compute.amazonaws.com/contact_us'

  link(:home, text: 'Home')
  link(:my_contacts, text: 'My Contacts')
  div(:menu_div, id: 'menu')

end
