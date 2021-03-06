require_relative( 'models/customer' )
require_relative( 'models/film' )
require_relative( 'models/ticket' )

require( 'pry' )

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer1 = Customer.new({ 'name' => 'Alan Hood', 'funds' => 40 })
customer1.save()

customer2 = Customer.new({ 'name' => 'Brian King', 'funds' => 30 })
customer2.save()

customer3 = Customer.new({ 'name' => 'Paul McCormack', 'funds' => 27 })
customer3.save()

film1 = Film.new({ 'title' => 'The Goonies', 'price' => 15 })
film1.save()

film2 = Film.new({ 'title' => 'Stand By Me', 'price' => 10 })
film2.save()

film3 = Film.new({ 'title' => 'Flight of the Navigator', 'price' => 12 })
film3.save()


ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film1.id })
ticket1.save()

ticket2 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film2.id })
ticket2.save()

ticket3 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film3.id })
ticket3.save()

ticket4 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => film2.id })
ticket4.save()

ticket5 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => film3.id })
ticket5.save()

ticket6 = Ticket.new({ 'customer_id' => customer3.id, 'film_id' => film1.id })
ticket6.save()

ticket7 = Ticket.new({ 'customer_id' => customer3.id, 'film_id' => film3.id })
ticket7.save()


binding.pry
nil