module API
  class StoresController < ApplicationController
    def index
      stores = Store.all
      render json: stores, status: :ok
    end

    def show
      store = Store.find(params[:id])
      render json: store, status: :ok
    end

    def create
      store = Store.new(store_params)
      if store.save
        head 204, location: store
      else
        render json: store.errors, status: 422
      end
    end

    def update
      store = Store.find(params[:id])
      if store.update(store_params)
        render json: store, status: 200
      else
        render json: store.errors, status: 422
      end
    end

    private
      def store_params
        params.require(:store).permit(:name, :places_id, :rating)
      end
  end
end
