module Devise
  module Views
    class BootstrapTemplatesGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../../../app/views', __FILE__)
      def copy_views
        binding.pry
        directory("devise", the_root_path)
      end

      private

      def the_root_path
        if ENGINE_ROOT
          engine_name = ENGINE_ROOT.rpartition('/').last.underscore
          Pathname.new(ENGINE_ROOT).join("app", "views", engine_name, "devise")
        else
          Rails.root.join("app", "views", "devise")
        end
      end

    end
  end
end
