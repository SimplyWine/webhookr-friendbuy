require 'generators/webhookr/init_generator'

module Webhookr
  module Friendbuy
    module Generators
      class InitGenerator < Webhookr::Generators::InitGenerator

        desc "This generator updates the named initializer with Friendbuy options"
        def init
          super
          append_to_file "config/initializers/#{file_name}.rb" do
            plugin_initializer_text
          end
        end

        def plugin_initializer_text
          "\nWebhookr::Friendbuy::Adapter.config.security_token = '#{generate_security_token}'" +
          "\n# Uncomment the next line to include your custom Friendbuy handler\n" +
          "# <-- Webhookr::Friendbuy::Adapter.config.callback = your_custom_class --> \n"
        end
      end
    end
  end
end
