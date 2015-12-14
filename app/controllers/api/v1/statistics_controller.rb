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

      def search_mental
         @results = []
         Statistic.where(warning_signs: 'Yes').find_each do |statistic|
            @results.push(statistic)
         end
         render json: @results.as_json()
      end

      def search_legal
         @results = []
         Statistic.where(weapons_obtained_legally: 'Yes').find_each do |statistic|
            @results.push(statistic)
         end
         render json: @results.as_json()
      end

      def search_both
         @results = []
         Statistic.where(warning_signs: 'Yes', weapons_obtained_legally: 'Yes').find_each do |statistic|
            @results.push(statistic)
         end
         render json: @results.as_json()
      end

      def search_deaths
         @results = Death.all
         render json: @results.as_json()
      end

   end
end
