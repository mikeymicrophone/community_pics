CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider                         => 'Google',
    :google_storage_access_key_id     => ENV['GOOGLE_KEY_ID'],
    :google_storage_secret_access_key => ENV['GOOGLE_KEY']
  }
  config.fog_directory = 'rubyclassphotos'
end