module Api
  module V1
    class HealthController < BaseController
      skip_before_action :authenticate_api_token

      # GET /api/v1/health
      def show
        render json: {
          status: "ok",
          timestamp: Time.current
        }
      end
    end
  end
end
