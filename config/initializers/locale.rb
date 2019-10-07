# Where the I18n library should search for translation files
# I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
# śo preciso desta linha se eu queira adicionar outro local para as traduções

# Whitelist locales available for the application
# I18n.available_locales = [:en, :pt]
I18n.available_locales = [:en, "pt-BR"]     # em aspas, por quer simbolos não podem ter traço '-'

# Set default locale to something other than :en
# I18n.default_locale = :pt
# I18n.default_locale = :en   # mater o idioma inglê por enquanto
I18n.default_locale = "pt-BR"   # mater o idioma inglê por enquanto
