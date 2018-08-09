module Api
    module V1
        class SpotsController < ApiApplicationController
            #before_action :authenticate_request!

            def index
                spots = Spot.order('id');
                render json: {status: 'SUCCESS', message: 'Carga de spots', data: spots}, status: :ok
            end

=begin
            def show
                image = Image.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Carga la imagen', data: image}, status: :ok
            end

            def create 
                image = Image.new(image_params)
                if image.save 
                    render json: {status: 'SUCCESS', message: 'Imagen guardada', data: image}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Imagen no guardada', data: image}, status: :unprocessable_entity
                end
            end


            def destroy 
                image = Image.find(params[:id])
                image.destroy
                render json: {status: 'SUCCESS', message: 'Imagen eliminada', data: image}, status: :ok
            end

            def update 
                image = Image.find(params[:id])
                if image.update_attributes(image_params)
                    render json: {status: 'SUCCESS', message: 'Imagen modificada', data: image}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Imagen no modificada', data: image}, status: :unprocessable_entity
                end
            end


            private
            def spot_params
                params.permit(:description, :picture)
            end
=end

        end
    end
end
