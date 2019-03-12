# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_lists = [
  {'first_name': 'Porter', 'last_name': 'Terry', 'telephone': '7686734354'},
  {'first_name': 'Neil', 'last_name': 'Solomon', 'telephone': '8906938895'},
  {'first_name': 'Ifeoma', 'last_name': 'Mercado', 'telephone': '9945393826'},
  {'first_name': 'Orlando', 'last_name': 'George', 'telephone': '9271156788'},
  {'first_name': 'Jerome', 'last_name': 'Pate', 'telephone': '8200220773'},
  {'first_name': 'Maris', 'last_name': 'Rosario', 'telephone': '3237610569'},
  {'first_name': 'Leroy', 'last_name': 'Guzman', 'telephone': '7135168905'},
  {'first_name': 'Christen', 'last_name': 'Romero', 'telephone': '4357255808'},
  {'first_name': 'Alika', 'last_name': 'Gilliam', 'telephone': '2170342803'},
  {'first_name': 'Baker', 'last_name': 'Russo', 'telephone': '5225250673'},
  {'first_name': 'Madeline', 'last_name': 'Mcleod', 'telephone': '4041340334'},
  {'first_name': 'Maxwell', 'last_name': 'Warren', 'telephone': '8642037115'},
  {'first_name': 'Roanna', 'last_name': 'Preston', 'telephone': '6948618487'},
  {'first_name': 'Germane', 'last_name': 'Serrano', 'telephone': '3948864159'},
  {'first_name': 'Carissa', 'last_name': 'Sullivan', 'telephone': '7866426095'},
  {'first_name': 'Zena', 'last_name': 'Bell', 'telephone': '5996638925'},
  {'first_name': 'Sonia', 'last_name': 'Poole', 'telephone': '6723206057'},
  {'first_name': 'Nissim', 'last_name': 'Howell', 'telephone': '1368988006'},
  {'first_name': 'Kenneth', 'last_name': 'Frazier', 'telephone': '3694422712'},
  {'first_name': 'Daquan', 'last_name': 'Bates', 'telephone': '2343554262'},
  {'first_name': 'Rylee', 'last_name': 'Blanchard', 'telephone': '6946596191'},
  {'first_name': 'Lara', 'last_name': 'Reilly', 'telephone': '9867799152'},
  {'first_name': 'Genevieve', 'last_name': 'Pena', 'telephone': '7546056376'},
  {'first_name': 'Ella', 'last_name': 'Burris', 'telephone': '0244630232'},
  {'first_name': 'Francis', 'last_name': 'Aguirre', 'telephone': '0996857002'},
  {'first_name': 'Dacey', 'last_name': 'Silva', 'telephone': '6973509263'},
  {'first_name': 'Jamal', 'last_name': 'Thornton', 'telephone': '6478639865'},
  {'first_name': 'Amethyst', 'last_name': 'Rodriquez', 'telephone': '7212943142'},
  {'first_name': 'Jessamine', 'last_name': 'Fernandez', 'telephone': '4071911471'},
  {'first_name': 'Hamilton', 'last_name': 'Summers', 'telephone': '1554769295'},
  {'first_name': 'Unity', 'last_name': 'Heath', 'telephone': '9751145913'},
  {'first_name': 'Richard', 'last_name': 'Hudson', 'telephone': '6558342280'},
  {'first_name': 'Remedios', 'last_name': 'Watkins', 'telephone': '3349294912'},
  {'first_name': 'Robin', 'last_name': 'Clemons', 'telephone': '3504869525'},
  {'first_name': 'Beck', 'last_name': 'Drake', 'telephone': '2968067880'},
  {'first_name': 'Ora', 'last_name': 'Mckay', 'telephone': '2494782627'},
  {'first_name': 'Kenneth', 'last_name': 'Daniel', 'telephone': '3068773125'},
  {'first_name': 'Wynter', 'last_name': 'Cobb', 'telephone': '3421838687'},
  {'first_name': 'Karly', 'last_name': 'Bender', 'telephone': '5405746737'},
  {'first_name': 'Marah', 'last_name': 'Burks', 'telephone': '1208498085'},
  {'first_name': 'Walker', 'last_name': 'Long', 'telephone': '6983640091'},
  {'first_name': 'Casey', 'last_name': 'Steele', 'telephone': '5520243720'},
  {'first_name': 'Imelda', 'last_name': 'Holloway', 'telephone': '8352122605'},
  {'first_name': 'Jordan', 'last_name': 'Shepherd', 'telephone': '6496426065'},
  {'first_name': 'Sybil', 'last_name': 'Brennan', 'telephone': '0079526019'},
  {'first_name': 'Hayden', 'last_name': 'Stark', 'telephone': '7681038619'},
  {'first_name': 'Katelyn', 'last_name': 'Cummings', 'telephone': '7193830645'},
  {'first_name': 'Hashim', 'last_name': 'Lawson', 'telephone': '4431437074'},
  {'first_name': 'Brianna', 'last_name': 'Garrison', 'telephone': '4606428393'},
  {'first_name': 'Clayton', 'last_name': 'Buchanan', 'telephone': '7649079351'},
  {'first_name': 'Conan', 'last_name': 'Gentry', 'telephone': '4065767192'},
  {'first_name': 'Otto', 'last_name': 'Fox', 'telephone': '6304636440'},
  {'first_name': 'Nash', 'last_name': 'Mcclure', 'telephone': '2057789054'},
  {'first_name': 'Salvador', 'last_name': 'Leach', 'telephone': '8591811364'},
  {'first_name': 'Uriah', 'last_name': 'Rodriquez', 'telephone': '8529335465'},
  {'first_name': 'Gail', 'last_name': 'Miranda', 'telephone': '2571520286'},
  {'first_name': 'Nicholas', 'last_name': 'Russo', 'telephone': '5864771464'},
  {'first_name': 'Karly', 'last_name': 'Massey', 'telephone': '8183160651'},
  {'first_name': 'Acton', 'last_name': 'Sampson', 'telephone': '5500599419'},
  {'first_name': 'Garth', 'last_name': 'Stanton', 'telephone': '9958152218'},
];

user_lists.each do |user|
  Contact.create!(
    first_name: user[:first_name],
    last_name: user[:last_name],
    telephone: user[:telephone]
  )
end