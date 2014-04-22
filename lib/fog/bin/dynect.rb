class Dynect < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :dns
        Fog::DNS::Dynect
      else
        raise ArgumentError, t.bin.error.unrecognized_service(key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :dns
          Fog::DNS.new(:provider => 'Dynect')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(service)
        end
      end
      @@connections[service]
    end

    def services
      [:dns]
    end

  end
end
