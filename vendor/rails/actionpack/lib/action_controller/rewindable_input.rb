module ActionController
  class RewindableInput
    class RewindableIO < ActiveSupport::BasicObject
      def initialize(io)
        @io = io
        @rewindable = io.is_a?(::StringIO)
        if @rewindable && @io.pos.nonzero?
          RAILS_DEFAULT_LOGGER.warn "buggy input to RewindableIO.new: #{caller[0,5].inspect}"
        end
      end

      def method_missing(method, *args, &block)
        unless @rewindable
          @io = ::StringIO.new(@io.read)
          @rewindable = true
        end

        @io.__send__(method, *args, &block)
      end
    end

    def initialize(app)
      @app = app
    end

    def call(env)
      env['rack.input'] = RewindableIO.new(env['rack.input'])
      @app.call(env)
    end
  end
end
