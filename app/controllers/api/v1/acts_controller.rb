module Api
  module V1
    class ActsController < ApplicatinController
      skip_before_filter :verify_authenticity_token
      respond_to :json

      def index
        respond_with(Act.all.order("completed ASC").order("id DESC"))
      end

      def show
        respond_with(Act.find(params[:id]))
      end

      def create
        @act = Act.new(act_params)
        if @act.save
          respond_to do |format|
            format.json { render :json => @act }
          end
        end
      end

      def update
        @act = Act.find(params[:id])
        if @act.update(act_params)
          respond_to do |format|
            format.json { render :json => @act }
          end
        end
      end

      def destroy
        respond_with Act.destroy(params[:id])
      end

    private
      def act_params
        params.require(:act).permit(:title, :description, :name)
      end
    end
  end
end
