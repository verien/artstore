CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     'AKIAILYBUZOB6OYSYP4A',      # 你的 key

      aws_secret_access_key: 'b7kr85vVEXLCeAWXjKgirj+bFLT/sL24t45TZAjN',      # 你的 secret key

      region:                'ap-northeast-1' # 你的 S3 bucket 的 Region 位置

    }
    config.fog_directory  = 'artstore3' # 你設定的 bucket name

  else
    config.storage :file
  end
end
