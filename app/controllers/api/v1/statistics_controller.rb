require "pry"

# class Api::V1::StatisticsController < ApplicationController

module Api::V1
   class StatisticsController < ApplicationController
      # respond_to :html, :json

      def index
         @response = Statistic.all
         render json: @response
      end

      def show
         @statistic = Statistic.find_by_id(params[:id])
         render json: @statistic.as_json
      end

      def search
         # pg search gem
         @results = Statistic.search_by(params[:search_term]);
         render json: @results.as_json()
      end

   end
end
