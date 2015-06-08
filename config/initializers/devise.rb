# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  # The secret key used by Devise. Devise uses this key to generate
  # random tokens. Changing this key will render invalid all existing
  # confirmation, reset password and unlock tokens in the database.
  # Devise will use the `secret_key_base` on Rails 4+ applications as its `secret_key`
  # by default. You can change it below and use your own secret key.
  # config.secret_key = 'e236facab80fc39a42aac761eb58e98d9286649a6d59b7871ee87b167e88612d4406e5681e7329b80c2988217c4b71140d34b248117e1f03b6a51d4410e47691'

  # ==> Mailer Configuration
  # Configure the e-mail address which will be shown in Devise::Mailer,
  # note that it will be overwritten if you use your own mailer class
  # with default "from" parameter.
  config.mailer_sender = 'Carol @ Code4Pro <no-reply@code4pro.com>'

  # Configure the class responsible to send e-mails.
  # config.mailer = 'Devise::Mailer'

  # ==> ORM configuration
  # Load and configure the ORM. Supports :active_record (default) and
  # :mongoid (bson_ext recommended) by default. Other ORMs may be
  # available as additional gems.
  require 'devise/orm/active_record'

  
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  require 'omniauth-google-oauth2'

  config.omniauth :google_oauth2, '623054663408-5h605itda2hbv5qb9a73p1dl4uo914n4.apps.googleusercontent.com', 'Ge9hC6fHS6ARbaf_5-GW8i2C', {access_type: "offline", approval_prompt: ""}
  
  require 'omniauth-facebook'
  config.omniauth :facebook, '1460106714283269', '81db2b0050921f8c038e5fa8846a0030'
end
