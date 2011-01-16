# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_RailsShop_session',
  :secret      => 'c4f53d460d2d85bc57455f17bb504381130deb1077b24b4c14283deed73979b3dfd12a49db75d7600b13a94290de04dd6fbc68ae4089015981d1b89888729199'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
