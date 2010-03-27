# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_learningrails_9_session',
  :secret      => 'd033ba80f676de66882a06ef635e316cf8f82815754a7b0cf7aadc0ecc2ffbb554f73e0f90f96ead3c42ed36204db905bb4a35640a03a60fe36a30a9b0065105'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
