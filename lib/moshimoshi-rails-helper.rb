require 'httparty'
require "moshimoshi-rails-helper/helper"
require "moshimoshi-rails-helper/version"

module Rails
  module MoshimoshiRailsHelper
    if defined?(::Rails::Engine)
      class Engine < ::Rails::Engine
        initializer 'rails-moshimoshi', group: :all do |app|
          ActiveSupport.on_load(:action_controller) do
            include Rails::MoshimoshiRailsHelper::Helper
          end

          ActiveSupport.on_load(:action_view) do
            include Rails::MoshimoshiRailsHelper::Helper
          end
        end
      end
    end
  end
end
