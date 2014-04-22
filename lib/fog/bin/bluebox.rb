class Bluebox < Fog::Bin
  class << self

    def class_for(key)
      case key
      when :compute
        Fog::Compute::Bluebox
      when :dns
        Fog::DNS::Bluebox
      when :blb
        Fog::Bluebox::BLB
      else
        raise ArgumentError, t.bin.error.unsupported_service(self, key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
        when :compute
          Fog::Logger.warning(t.bin.warning.portability('Bluebox[:compute]',
                                                        'Compute[:bluebox]'))
          Fog::Compute.new(:provider => 'Bluebox')
        when :dns
          Fog::Logger.warning(t.bin.warning.portability('Bluebox[:dns]', 'DNS[:bluebox]'))
          Fog::DNS.new(:provider => 'Bluebox')
        else
          raise ArgumentError, t.bin.error.unrecognized_service(service)
        end
      end
      @@connections[service]
    end

    def services
      Fog::Bluebox.services
    end

  end
end
