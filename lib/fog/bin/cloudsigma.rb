class CloudSigma < Fog::Bin
  class << self

    def class_for(key)
      case key
        when :compute
          Fog::Compute::CloudSigma
        else
          raise ArgumentError, t.bin.error.unrecognized_service(key)
      end
    end

    def [](service)
      @@connections ||= Hash.new do |hash, key|
        hash[key] = case key
                      when :compute
                        Fog::Compute.new(:provider => 'CloudSigma')
                      else
                        raise ArgumentError, t.bin.error.unrecognized_service(key.inspect)
                    end
      end
      @@connections[service]
    end

    def services
      Fog::CloudSigma.services
    end
  end
end
