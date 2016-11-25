if Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
  end
end

# Use AWS storage if in production
if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV['S3_ACCESS_KEY'],                        # required
      aws_secret_access_key: ENV['S3_SECRET_KEY'],
      region:                ENV['S3_REGION'],                  # optional, defaults to 'us-east-1'                        # required
    }
    config.fog_directory  = ENV['S3_BUCKET']                          # required
  end
end
