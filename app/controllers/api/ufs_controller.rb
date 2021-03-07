class Api::UfsController <ActionController::API
    include ActionController::MimeResponds

    def search_date
        @client = Client.find_by(name: request.headers['x-cliente'])

        if @client
            @client.request += 1
            @client.save
            @uf_day = Uf.find_by(date: DateTime.parse(params[:date]))

            if @uf_day
                respond_to :json
                render json: @uf_day.to_json(only:[:date, :value])
            else
                respond_to :json
                render json: {error: 'Fecha no encontrada'}
            end
        else
            respond_to :json
            render json: {error: 'Usuario no encontrado'}
        end

    end
    
end
