CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: AWS_ACCESS_KEY
    aws_secret_access_key: AWS_SECRET_ACCESS_KEY
    region: 'ap-northeast-1'
  }

  if Rails.env.production?
    config.fog_directory  = FOG_DIRECTORY
    config.cache_storage = :fog
  end
end

CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
