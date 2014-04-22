class Glesys < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::Glesys
      else
        raise ArgumentError, "Unsupported #{self} service: #{key}"
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('Glesys[:compute]', 'Compute[:glesys]'))
          Fog::Compute.new(:provider => 'Glesys')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(service)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Glesys.services
    end

  end
end
