json.array!(@members) do |member|
  json.extract! member, :id, :member_id, :name, :gender, :position, :about, :motto, :avatar
  #json.url member_url(member, format: :json)
end
