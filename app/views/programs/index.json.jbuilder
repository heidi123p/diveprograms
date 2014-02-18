json.array!(@programs) do |program|
  json.extract! program, :id, :program_description, :minimum_level, :cost, :minimum_length, :website, :gear, :accomodation_included, :shop_id
  json.url program_url(program, format: :json)
end
