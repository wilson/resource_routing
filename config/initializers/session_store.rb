# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_resource_routing_session',
  :secret      => '022de007343bcd15468b99681eca75650e1bb4616e62618fd8aae782f2ee64aa3318d58af00be9c4de0fa8fecad1b2adc34122444fddcf50f3a5e0a9a09a38c8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
