class NumberInsightsController < ApplicationController

    BASE_URL = ''

    def index
        render :index
    end

    def show
    end

    def create
        insight_type(params)
        render :show
    end

    def event
        insight_type(params)
        render :show
    end

    def basic
        render :basic
    end

    def standard
        render :standard
    end

    def advanced
        render :advanced
    end

    private

    def nexmo
        client = Nexmo::Client.new(
            api_key: ENV['NEXMO_API_KEY'],
            api_secret: ENV['NEXMO_API_SECRET']
        )
    end

    def insight_type(params)
        if params[:type] == 'basic'
            @data = nexmo.number_insight.basic(number: params[:number])
        elsif params[:type] == 'standard'
            @data = nexmo.number_insight.standard(number: params[:number])
        elsif params[:type] == 'advanced'
            @data = nexmo.number_insight.advanced(number: params[:number])
        elsif params[:type] == 'advanced_async'
            @data = nexmo.number_insight.advanced_async(number: params[:number], callback: "#{BASE_URL}/webhook/event")
        else
            flash[:failure] = "Please try to submit the form again, something went wrong."
            redirect_to '/number_insights'
            return
        end
        @data = @data.to_h
    end
end
