class Api::ProductCategoriesController < ApplicationController

    def index
        render json: ProductCategory.all
    end

    def show
        render json: @product_categories
    end

    def create
        product_categories = ProductCategory.create!(product_categories_params)
        render json: product_categories, status: :created
    end

    def update
        @product_categories.update!(product_categories_params)
        render json: @product_categories, status: :accepted
    end

    def destroy
        @product_categories.destroy
        head :no_content
    end

    private

    def find_product_categories
        @product_categories = ProductCategory.find(params[:id])
    end

    def product_categories_params
        params.permit(:category_name, :category_description, :active)
    end

end
