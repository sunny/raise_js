# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Dummy::Application.config.secret_key_base = 'a5480b617f5fc54bf886df537210a6c2d4a21f3d5fac464666f19ac972eaa348fa2794bf3bb5156d602cfec4ee645f6c5093821191bc20e14e58577f0429d7fe'
Dummy::Application.config.secret_token = 'f3bb5156d602cfec4ee645f6c5093821191bc20e14e58577f0429d7fe'
