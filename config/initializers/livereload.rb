# Specifying Rack::LiveReload options.
middleware = Rails.application.config.middleware
middleware.use(Rack::LiveReload,
                      # :host             => 'myhost.cool.wow',
                      min_delay: 500,    # default 1000
                      max_delay: 10_000, # default 60_000
                      source: :livereload,
                      # live_reload_port: 56789,  # default 35729
                      ignore: [ %r{dont/modify\.html$} ])
