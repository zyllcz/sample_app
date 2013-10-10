# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file,token)
		token
	end
end
SampleApp::Application.config.secret_key_base = 'a681d89713f7b644e6d6d51f306e2a268a9dde2fbcbd70fc52bcc7cd16c19fe18b05455d6c44c5889ac8b083942c590fb332093e4c0092b6862b50b141cb0817'
