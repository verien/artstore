CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     'AKIAIU7M4D4TZJXLJPDQ',      # 你的 key

      aws_secret_access_key: 'h+i+0QRHmncvjBSh7WpzHB0xIr12dbajZ+pEMX6+',      # 你的 secret key

      region:                'ap-northeast-1' # 你的 S3 bucket 的 Region 位置

    }
    config.fog_directory  = 'artstore3' # 你設定的 bucket name

  else
    config.storage :file
  end
end
