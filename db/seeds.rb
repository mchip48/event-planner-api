# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

attendee1 = Attendee.create!(name: "Alice Johnson", email: "alice@example.com")
attendee2 = Attendee.create!(name: "Bob Smith", email: "bob@example.com")
attendee3 = Attendee.create!(name: "Charlie Davis", email: "charlie@example.com")

event1 = Event.create!(name: "Tech Conference 2025", location: "New York", date: Date.new(2025, 5, 10))
event2 = Event.create!(name: "Music Festival", location: "Los Angeles", date: Date.new(2025, 7, 15))
event3 = Event.create!(name: "Startup Pitch Night", location: "San Francisco", date: Date.new(2025, 9, 20))

Registration.create!(attendee_id: attendee1.id, event_id: event1.id)
Registration.create!(attendee_id: attendee1.id, event_id: event2.id)
Registration.create!(attendee_id: attendee2.id, event_id: event1.id)
Registration.create!(attendee_id: attendee2.id, event_id: event2.id)
Registration.create!(attendee_id: attendee3.id, event_id: event1.id)
Registration.create!(attendee_id: attendee3.id, event_id: event3.id)


puts "Successfully seeded Attendees, Events, and Registrations"