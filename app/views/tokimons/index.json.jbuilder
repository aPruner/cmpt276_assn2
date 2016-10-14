json.array!(@tokimons) do |tokimon|
  json.extract! tokimon, :id, :name, :height, :weight, :fly, :fight, :fire, :water, :electric, :ice, :total, :trainer_id
  json.url tokimon_url(tokimon, format: :json)
end
