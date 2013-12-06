module Move
  class BoxesController < ActionController::Base
    layout 'application'

    def index
      @boxes = Box.all
    end

    def show
      @box = Box.find(params[:id])
    end

    def new
      @box = Box.new
    end

    def create
      @box = Box.new(params[:move_box])
      if @box.save
        redirect_to @box
      else
        render :action => 'new'
      end
    end

    def edit
      @box = Box.find(params[:id])
    end

    def update
      @box = Box.find(params[:id])
      if @box.update_attributes(params[:move_box])
        redirect_to @box
      else
        redirect_to :edit
      end
    end
  end
end
