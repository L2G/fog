class SakuraCloud < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::SakuraCloud
      when :volume
        Fog::Volume::SakuraCloud
      else
        raise ArgumentError, t.bin.error.unrecognized_service(key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('SakuraCloud[:compute]', 'Compute[:sakuracloud]'))
          Fog::Compute.new(:provider => 'SakuraCloud')
        when :volume
          Fog::Logger.warning(t.bin.warning.portability('SakuraCloud[:compute]', 'Compute[:SakuraCloud]'))
          Fog::Compute.new(:provider => 'SakuraCloud')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::SakuraCloud.services
    end

  end
end
