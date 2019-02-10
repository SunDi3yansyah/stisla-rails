module Stisla
  module Rails
    class Engine < ::Rails::Engine
      %w(fonts img modules).each do |sub|
        config.assets.paths << root.join('assets', sub).to_s
      end
    end
  end
end
