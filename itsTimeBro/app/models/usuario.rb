class Usuario < ActiveRecord::Base
	has_many :alarmas
	has_many :voice_notes
end
