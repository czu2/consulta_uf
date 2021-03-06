module Api
    class UfsController < ActionController::API

        def by_date
            @client = Client.find_by(name: request.headers["X-CLIENTE"])
            @client.log_in_count += 1
            @client.save
            @uf = Uf.find_by(date: params[:date])
            render json: @uf
        end
        
    end
end
