class VoiceNote < ActiveRecord::Base
	mount_uploader :voiceNote, VoicefileUploader
end
