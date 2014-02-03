# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Echo::Application.config.secret_key_base = 'b1a5f10eb1b1500892bb3d468350458fff961feebb5c447cd97a6a51c58da88383f50b4f019d6d384a278e73238e858f2a9d52a57a8aa5862d2a19f7eb6d99dc'
