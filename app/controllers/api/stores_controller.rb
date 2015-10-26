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
  end
end
