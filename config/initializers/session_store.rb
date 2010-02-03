# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_service_session',
  :secret      => 'd56eec481d7cf25c418d88c8926d2a6ed5165108c9f99057ae08d6a38b528ba1d82b8b71e5b3ade5959847419b5a1572d18c44f99dcc941b8ed83d03b65dbc4a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
