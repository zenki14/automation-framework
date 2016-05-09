class MyContactsPage
  include PageObject

  page_url 'http://ec2-54-191-181-182.us-west-2.compute.amazonaws.com/contacts'

  link(:my_contacts, text: 'My Contacts')
  link(:home, text: 'Home')
  div(:menu_div, id: 'menu')

  link(:add_contact, text: 'New Contact')
  div(:content_div, id: 'content')

end