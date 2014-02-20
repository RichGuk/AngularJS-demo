json.array!(@people) do |person|
  json.name person.name
  json.age person.age
  json._links do
    json.self "/people/#{person.id}"
  end
end
