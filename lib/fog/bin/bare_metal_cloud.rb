class BareMetalCloud < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::BareMetalCloud
      else
        raise ArgumentError, t.bin.error.unsupported_service(self, key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('BareMetalCloud[:compute]',
                                                        'Compute[:baremetalcloud]'))
          Fog::Compute.new(:provider => 'BareMetalCloud')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::BareMetalCloud.services
    end

  end
end
