# frozen_string_literal: true

require "kubik_publishable"

module KubikVersionable
  class Error < StandardError; end

  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace KubikVersionable

      config.autoload_paths += Dir["#{root}/app/models"]
    end
  end
end

module Kubik
  require "kubik/versionable"
  require "kubik/versionable/public_view"
  require "kubik/versionable_admin_action"
end
