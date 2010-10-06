# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_maori_session',
  :secret      => 'd1a0a2bd1d153cc96faae0ef956a40ba04c43f218b406f71236deab714003c36747c33eb1f7f414c5c9dd68561f92eb91d2afae6c57c6bde4c1949ed68ff0eff'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
