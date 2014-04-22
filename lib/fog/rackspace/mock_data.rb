module Fog
  module Rackspace
    module MockData

      NOT_FOUND_ID = 'NOT-FOUND'

      def data
        @@data ||= Hash.new do |hash, key|
          hash[key] = begin

            #Compute V2
            flavor_id  = Fog.credentials[:rackspace_flavor_id] ||= '3'
            image_id   = Fog.credentials[:rackspace_image_id] ||= Fog::Rackspace::MockData.uuid
            image_name = Fog::Mock.random_letters(6)
            network_id = Fog::Rackspace::MockData.uuid
            user_id    =  Fog::Mock.random_numbers(6).to_s

            flavor = {
              'OS-FLV-EXT-DATA:ephemeral' => 4,
              'disk'  => 20,
              'id'    => flavor_id,
              'links' => [
                {
                  'href' => "https://dfw.servers.api.rackspacecloud.com/v2/010101/flavors/#{flavor_id}",
                  'rel'  => 'self'
                },
                {
                  'href' => "https://dfw.servers.api.rackspacecloud.com/010101/flavors/#{flavor_id}",
                  'rel'  => 'bookmark'
                }
              ],
                'name'        => '512MB Standard Instance',
                'ram'         => 512,
                'rxtx_factor' => 2.0,
                'swap'        => 512,
                'vcpus'       => 1,
            }

            image = {
              'OS-DCF:diskConfig' => 'AUTO',
              'created' => '2012-02-28T19:38:57Z',
              'id' => image_id,
              'name' => 'Ubuntu',
              'links' => [
                {
                  'href' => "https://dfw.servers.api.rackspacecloud.com/v2/010101/images/#{image_id}",
                  'rel'  => 'self'
                },
                {
                  'href' => "https://dfw.servers.api.rackspacecloud.com/010101/images/#{image_id}",
                  'rel'  => 'bookmark'
                },
                {
                  'href' => "https://dfw.servers.api.rackspacecloud.com/010101/images/#{image_id}",
                  'rel'  => 'alternate',
                  'type' => 'application/vnd.openstack.image'
                }
              ],
                'metadata' => {
                'arch' => 'x86-64',
                'auto_disk_config' => 'True',
                'com.rackspace__1__build_core' => '1',
                'com.rackspace__1__build_managed' => '0',
                'com.rackspace__1__build_rackconnect' => '0',
                'com.rackspace__1__options' => '0',
                'com.rackspace__1__visible_core' => '1',
                'com.rackspace__1__visible_managed' => '0',
                'com.rackspace__1__visible_rackconnect' => '0',
                'image_type' => 'base',
                'org.openstack__1__architecture' => 'x64',
                'org.openstack__1__os_distro' => 'org.ubuntu',
                'org.openstack__1__os_version' => '11.10',
                'os_distro' => 'ubuntu',
                'os_type' => 'linux',
                'os_version' => '11.10',
                'rax_managed' => 'false',
                'rax_options' => '0'
              },
              'minDisk'  => 10,
              'minRam'   => 256,
              'name'     => image_name,
              'progress' => 100,
              'status'   => 'ACTIVE',
              'updated'  => '2012-02-28T19:39:05Z'
            }

            network = {
              'id' => network_id,
              'label' => 'network label',
              'cidr' => '192.168.0.0/24'
            }

            key_pair = {
                'public_key'  => 'ssh-rsa '.concat(Fog::Mock.random_letters(372)).concat(" Generated by Nova\n"),
                'private_key' => "-----BEGIN RSA PRIVATE KEY-----\n".concat(Fog::Mock.random_letters(1635)).concat("\n-----END RSA PRIVATE KEY-----\n"),
                'user_id'     => user_id,
                'name'        => Fog::Mock.random_letters(32),
                'fingerprint' => '00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00'
            }

            #Block Storage
            volume_type1_id = Fog::Mock.random_numbers(3).to_s
            volume_type2_id = Fog::Mock.random_numbers(3).to_s

            volume_type1 = {
              'id' => volume_type1_id,
              'name' => 'SATA',
              'extra_specs' => {},
            }

            volume_type2 = {
              'id' => volume_type2_id,
              'name' => 'SSD',
              'extra_specs' => {},
            }

            #AutoScale
            launch_config = {
              'args' => {
                  'loadBalancers' => [
                    {
                      'port' => 8080,
                      'loadBalancerId' => 9099
                    }
                  ],
                  'server' => {
                    'name' => 'autoscale_server',
                    'imageRef' => '0d589460-f177-4b0f-81c1-8ab8903ac7d8',
                    'flavorRef' => '2',
                    'OS-DCF =>diskConfig' => 'AUTO',
                    'metadata' => {
                      'build_config' => 'core',
                      'meta_key_1' => 'meta_value_1',
                      'meta_key_2' => 'meta_value_2'
                    },
                    'networks' => [
                      {
                        'uuid' => '11111111-1111-1111-1111-111111111111'
                      },
                      {
                        'uuid' => '00000000-0000-0000-0000-000000000000'
                      }
                    ],
                    'personality' => [
                      {
                        'path' => '/root/.csivh',
                        'contents' => 'VGhpcyBpcyBhIHRlc3QgZmlsZS4='
                      }
                    ]
                  }
                },
                'type' => 'launch_server'
            }

            group_config = {
              'max_entities' => 10,
              'cooldown' => 360,
              'name' => 'testscalinggroup198547',
              'min_entities' => 0,
              'metadata' => {
                'gc_meta_key_2' => 'gc_meta_value_2',
                'gc_meta_key_1' => 'gc_meta_value_1'
              }
            }

            policy = {
              'cooldown' => 0,
              'type' => 'webhook',
              'name' => 'scale up by 1',
              'change' => 1
            }

            webhook = {
              'name' => 'webhook name',
              'metadata' => {'foo' => 'bar'}
            }

            mock_data = {
              #Compute V2
              :flavors  => Hash.new { |h,k| h[k] = flavor  unless [NOT_FOUND_ID, '0'].include?(k) },
              :images   => Hash.new { |h,k| h[k] = image   unless [NOT_FOUND_ID, '0'].include?(k) },
              :networks => Hash.new { |h,k| h[k] = network unless [NOT_FOUND_ID, '0'].include?(k) },
              :keys     => [],
              :keypair  => key_pair,
              :keypairs => [],
              :servers  => {},

              #Block Storage
              :volumes            => {},
              :snapshots          => {},
              :volume_attachments => [],
              :volume_types       => {volume_type1_id => volume_type1, volume_type2_id => volume_type2},

              #Autoscale
              :autoscale_groups => {}
            }

            # seed with initial data
            mock_data[:flavors][flavor_id] = flavor
            mock_data[:images][image_id] = image
            mock_data[:networks][network_id] = network

            mock_data
          end
        end[@rackspace_api_key]
      end

      def self.uuid
        [8,4,4,4,12].map{|i| Fog::Mock.random_hex(i)}.join('-')
      end

      def self.ipv4_address
        4.times.map{ Fog::Mock.random_numbers(3) }.join('.')
      end

      def self.ipv6_address
        8.times.map { Fog::Mock.random_hex(4) }.join(':')
      end

      def self.keep(hash, *keys)
        {}.tap do |kept|
          keys.each{|k| kept[k] = hash[k] if hash.key?(k)}
        end
      end

      def self.slice(hash, *keys)
        hash.dup.tap do |sliced|
          keys.each{|k| sliced.delete(k)}
        end
      end

      def self.zulu_time
        Time.now.strftime('%Y-%m-%dT%H:%M:%SZ')
      end

      def self.stringify(message)
        case message
        when Symbol
          message.to_s
        when Hash
          result = Hash.new
          message.each do |key, value|
            nk = stringify(key)
            nv = stringify(value)
            result[nk] = nv
          end
          result
        else
          message
        end
      end
    end
  end
end
