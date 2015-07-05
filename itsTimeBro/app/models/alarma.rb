class Alarma < ActiveRecord::Base
	has_many :voice_notes
	belongs_to :usuario
end
