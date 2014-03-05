json.array!(@algos) do |algo|
  json.extract! algo, :nombre, :fecha
  json.url algo_url(algo, format: :json)
end
