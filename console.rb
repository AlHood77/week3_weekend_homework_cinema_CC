require_relative( 'models/customer' )
require_relative( 'models/film' )
require_relative( 'models/ticket' )

require( 'pry' )

customer1 = Customer.new({ 'name' => 'Alan Hood', 'funds' => 40 })
customer1.save()
customer2 = Customer.new({ 'name' => 'Brian King', 'funds' => 30 })
customer2.save()
customer3 = Customer.new({ 'name' => 'Paul McCormack', 'funds' => 20 })
customer3.save()

film1 = Film.new({ 'title' => 'The Goonies', 'price' => 15 })

film2 = Film.new({ 'title' => 'Stand By Me', 'price' => 10 })

film3 = Film.new({ 'title' => 'Flight of the Navigator', 'price' => 12 })


ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film1.id })
ticket2 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film2.id })
ticket3 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film3.id })

ticket4 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => film2.id })
ticket5 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => film3.id })

ticket6 = Ticket.new({ 'customer_id' => customer3.id, 'film_id' => film1.id })
ticket7 = Ticket.new({ 'customer_id' => customer3.id, 'film_id' => film3.id })


binding.pry
nil