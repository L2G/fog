class Serverlove < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::Serverlove
      else
        raise ArgumentError, t.bin.error.unrecognized_service(key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('Serverlove[:compute]', 'Compute[:serverlove]'))
          Fog::Compute.new(:provider => 'Serverlove')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Serverlove.services
    end

  end
end
