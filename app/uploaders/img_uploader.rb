class ImgUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave 
	include CarrierWave::RMagick
end
