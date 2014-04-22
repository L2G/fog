module Fog
  module Compute
    class OpenStack
      class Real

        def get_server_details(server_id)
          request(
            :expects => [200, 203],
            :method  => 'GET',
            :path    => "servers/#{server_id}.json"
          )
        end

      end

      class Mock

        def get_server_details(server_id)
          response = Excon::Response.new
          if server = list_servers_detail.body['servers'].detect {|_| _['id'] == server_id}
            response.status = [200, 203][rand(1)]
            response.body = { 'server' => server }
            response
          else
            raise Fog::Compute::OpenStack::NotFound
          end
        end

      end
    end
  end
end
