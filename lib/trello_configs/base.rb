module ThinRelease
  class Base
    # Returns (and initialize if needed) a ThinRelease::Config instance
    #
    # @return [ThinRelease::Config] the current config instance.
    def self.config
      @config ||= Config.new
    end
  end
end
