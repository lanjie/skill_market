json.array!(@workers) do |worker|
  json.extract! worker, :id, :name, :description
  json.url worker_url(worker, format: :json)
end
