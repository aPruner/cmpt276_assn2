json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :name, :level, :num_tokimon
  json.url trainer_url(trainer, format: :json)
end
