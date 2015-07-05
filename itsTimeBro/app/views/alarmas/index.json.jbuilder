json.array!(@alarmas) do |alarma|
  json.extract! alarma, :id, :nombreAlarma, :fechaAlarma, :usuario_id
  json.url alarma_url(alarma, format: :json)
end
