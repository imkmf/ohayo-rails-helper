require 'httparty'
require "ohayo-rails-helper/helper"
require "ohayo-rails-helper/version"

module Rails
  module OhayoRailsHelper
    if defined?(::Rails::Engine)
      class Engine < ::Rails::Engine
        initializer 'rails-ohayo', group: :all do |app|
          ActiveSupport.on_load(:action_controller) do
            include Rails::OhayoRailsHelper::Helper
          end

          ActiveSupport.on_load(:action_view) do
            include Rails::OhayoRailsHelper::Helper
          end
        end
      end
    end
  end
end
