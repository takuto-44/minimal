require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :file
  config.file_provider = 'file/aws'
  config.file_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.credentials[:aws][:access_key_id],
    aws_secret_access_key: Rails.application.credentials[:aws][:secret_access_key],
    region: 'ap-northeast-1'
  }

  config.file_directory  = 'minimal'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/minimal'
end