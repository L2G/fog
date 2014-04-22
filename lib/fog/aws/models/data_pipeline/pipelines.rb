require 'fog/core/collection'
require 'fog/aws/models/data_pipeline/pipeline'

module Fog
  module AWS
    class DataPipeline

      class Pipelines < Fog::Collection

        model Fog::AWS::DataPipeline::Pipeline

        def all
          ids = []

          loop do
            result = service.list_pipelines
            ids << result['pipelineIdList'].map { |id| id['id'] }
            break unless (result['hasMoreResults'] && result['marker'])
          end

          load(service.describe_pipelines(ids.flatten)['pipelineDescriptionList'])
        end

        def get(id)
          data = service.describe_pipelines([id])['pipelineDescriptionList'].first
          new(data)
        rescue Excon::Errors::BadRequest => error
          data = Fog::JSON.decode(error.response.body)
          raise unless data['__type'] == 'PipelineDeletedException' || data['__type'] == 'PipelineNotFoundException'

          nil
        end

      end
    end
  end
end
