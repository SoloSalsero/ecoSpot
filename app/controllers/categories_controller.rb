class CategoriesController < ApplicationController
    before_action :set_image, only: [:show, :edit, :update, :destroy]

    def index
        @categories = Image.all
    end

    def new
        @category = Image.new
    end

    def create
        @category = Image.new images_params
        @category.save

        #redirect_to @category #redirecciona a una nuieva vista
        redirect_to '/'
    end

    def show
    end

    def edit
    end

    def update
        @category.update images_params
        redirect_to @category
    end

    def destroy
        @category.destroy
        redirect_to images_path
    end

    private
    def images_params
        params.require(:image).permit :description, :picture
    end

    def set_image
        @category = Image.find params[:id]
    end
end
