json.array!(@voice_notes) do |voice_note|
  json.extract! voice_note, :id, :alarma_id, :voiceNote, :usuario_id
  json.url voice_note_url(voice_note, format: :json)
end
