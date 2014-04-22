class Ninefold < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::Ninefold
      when :storage
        Fog::Storage::Ninefold
      else
        raise ArgumentError, "Unsupported #{self} service: #{key}"
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('Ninefold[:compute]', 'Compute[:ninefold]'))
          Fog::Compute.new(:provider => 'Ninefold')
        when :storage
          Fog::Logger.warning(t.bin.warning.portability('Ninefold[:storage]', 'Storage[:ninefold]'))
          Fog::Storage.new(:provider => 'Ninefold')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(service)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Ninefold.services
    end

  end
end
