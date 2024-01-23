first_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
first_array.each do |num|
  puts num
end

h = {a:1, b:2, c:3, d:4}
puts h[:b]
h[:e] = 5
puts h

def merge_contact_data(contact_data, contacts)
  contacts.each do |person, data|
    index = contacts.keys.index(person)

    contacts[person][:email] = contact_data[index][0]
    contacts[person][:address] = contact_data[index][1]
    contacts[person][:phone] = contact_data[index][2]
  end
end

contact_data = [
  ["john@email.com", "123 Main st.", "555-123-4567"],
  ["avion@email.com", "404 Not Found Dr.", "123-234-3456"]
]

contacts = {"John Cruz": {}, "Avion School": {}}

merge_contact_data(contact_data, contacts)
print "John Cruz: "
puts contacts[:"John Cruz"]
print "Avion School: "
puts contacts[:"Avion School"]
