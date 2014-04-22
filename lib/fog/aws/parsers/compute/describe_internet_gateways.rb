module Fog
  module Parsers
    module Compute
      module AWS

        class DescribeInternetGateways < Fog::Parsers::Base

          def reset
            @internet_gateway = { 'attachmentSet' => {}, 'tagSet' => {} }
            @response = { 'internetGatewaySet' => [] }
            @tag = {}
            @attachment = {}
          end

          def start_element(name, attrs = [])
            super
            case name
            when 'tagSet'
              @in_tag_set = true
            when 'attachmentSet'
              @in_attachment_set = true
            end
          end

          def end_element(name)
            if @in_tag_set
              case name
                when 'item'
                  @internet_gateway['tagSet'][@tag['key']] = @tag['value']
                  @tag = {}
                when 'key', 'value'
                  @tag[name] = value
                when 'tagSet'
                  @in_tag_set = false
              end
            elsif @in_attachment_set
              case name
                when 'item'
                  @internet_gateway['attachmentSet'] = @attachment
                  @attachment = {}
                when 'vpcId', 'state'
                  @attachment[name] = value
                when 'attachmentSet'
                  @in_attachment_set = false
              end
            else
              case name
              when 'internetGatewayId'
                @internet_gateway[name] = value
              when 'item'
                @response['internetGatewaySet'] << @internet_gateway
                @internet_gateway = { 'tagSet' => {} }
                @internet_gateway = { 'attachmentSet' => {} }
              when 'requestId'
                @response[name] = value
              end
            end
          end
        end
      end
    end
  end
end
