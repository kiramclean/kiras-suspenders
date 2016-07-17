require 'rails/generators'

module Suspenders
  class StylesheetBaseGenerator < Rails::Generators::Base
    source_root File.expand_path(
      File.join("..", "..", "..", "templates"),
      File.dirname(__FILE__))

    def add_css_config
      copy_file(
        'application.sass',
        'app/assets/stylesheets/application.sass',
        force: true,
      )
    end

    def remove_prior_config
      remove_file "app/assets/stylesheets/application.css"
    end

    def add_variables_file
      copy_file(
        '_variables.sass',
        'app/assets/stylesheets/base/_variables.sass'
      )
    end

    def add_default_styles
      copy_file(
        '_defaults.sass',
        'app/assets/stylesheets/base/_defaults.sass'
      )
    end

    def add_mixins_styles
      copy_file(
        '_mixins.sass',
        'app/assets/stylesheets/base/_mixins.sass'
      )
    end

    def add_flashes_styles
      copy_file(
        '_flashes.sass',
        'app/assets/stylesheets/components/_flashes.sass'
      )
    end

    def add_buttons_styles
      copy_file(
        '_buttons.sass',
        'app/assets/stylesheets/components/_buttons.sass'
      )
    end

    def add_forms_styles
      copy_file(
        '_forms.sass',
        'app/assets/stylesheets/components/_forms.sass'
      )
    end
  end
end
