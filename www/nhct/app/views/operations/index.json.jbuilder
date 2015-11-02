json.array!(@operations) do |operation|
  json.extract! operation, :id, :OperationCode, :OperationDate, :patient_id
  json.url operation_url(operation, format: :json)
end
