# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_catalog_session',
  :secret      => '82975753ca207d667acdc309025b1e7d56c82ede87deb72ba9cd609eb74d8050b131b0b577fb96ae1bddfd7ca50736ae4530cd338e01da430cadfea472b0a17f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
