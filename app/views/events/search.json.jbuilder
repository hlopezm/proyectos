json.array! @events do |event|
  json.label event.name
  json.value event.name
  # json.value event.name
  # json.term event.name
  # json.id event.id
end
