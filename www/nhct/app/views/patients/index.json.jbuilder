json.array!(@patients) do |patient|
  json.extract! patient, :id, :PatientIdentifier
  json.url patient_url(patient, format: :json)
end
