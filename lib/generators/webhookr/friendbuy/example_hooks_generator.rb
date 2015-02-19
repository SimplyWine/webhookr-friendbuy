module Webhookr
  module Friendbuy
    module Generators

      class ExampleHooksGenerator < Rails::Generators::Base
        source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

        desc "Creates an example Friendbuy hook file: 'app/models/pronto_forms_hooks.rb'"
        def example_hooks
          copy_file( "pronto_forms_hooks.rb", "app/models/pronto_forms_hooks.rb")
        end
      end

    end
  end
end
