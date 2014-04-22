class DigitalOcean < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::DigitalOcean
      else
        raise ArgumentError, "Unsupported #{self} service: #{key}"
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('DigitalOcean[:compute]', 'Compute[:digitalocean]'))
          Fog::Compute.new(:provider => 'DigitalOcean')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::DigitalOcean.services
    end

  end
end
