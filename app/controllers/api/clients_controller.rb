class Api::ClientsController <ActionController::API
    include ActionController::MimeResponds

    def find_client
        @client = Client.find_by(name: params[:name])

        if @client 
            respond_to :json
            render json: @client.to_json(only:[:name, :request])
        else
            respond_to :json
            render json: {error:'Cliente no encontrado'}
        end
        
    end
end