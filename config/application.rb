require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Encontrei
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # config.time_zone = "Brasilia"

    # config.i18n.load_path += Dir[Rails.root.join("config/locales/**/*.yml").to_s]
    # config.i18n.default_locale = "pt-BR"
    # config.i18n.available_locales = ["pt-BR"]
    # config.encoding = "utf-8"
  end
end
