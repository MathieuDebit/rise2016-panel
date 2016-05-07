json.array!(@participants) do |participant|
  json.extract! participant, :id, :firstname, :lastname, :birthdate, :nationality
  json.url participant_url(participant, format: :json)
end
