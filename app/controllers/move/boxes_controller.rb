module Move
  class BoxesController < ActionController::Base
    layout 'application'

    def index
      @boxes = Box.all
    end

    def show
      @box = Box.find(params[:id])
    end
  end
end
