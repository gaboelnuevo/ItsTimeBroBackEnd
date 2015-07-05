class CreateVoiceNotes < ActiveRecord::Migration
  def change
    create_table :voice_notes do |t|
      t.integer :alarma_id
      t.string :voiceNote
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
