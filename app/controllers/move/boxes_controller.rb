module Move
  class BoxesController < ActionController::Base
    USERNAME, PASSWORD = 'tatai', '6f80ffffdc48972f6e1244e73edbadca50b9ad7a'

    layout 'application'
    before_filter :authorize, :except => [:show]

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
        redirect_to :move_boxes
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

    def destroy
      @box = Box.find(params[:id])
      @box.destroy
      redirect_to :move_boxes
    end

    private
    def authorize
       authenticate_or_request_with_http_basic do |username, password| 
         username == USERNAME && Digest::SHA1.hexdigest(password) == PASSWORD 
       end 
    end
  end
end
