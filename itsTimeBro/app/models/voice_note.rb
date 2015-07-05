class VoiceNote < ActiveRecord::Base
	mount_uploader :Voicenote, VoicefileUploader
end
