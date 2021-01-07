class SubscriptionsController < ApplicationController
  def  index
    @subscriptions = Subscription.all
  end

  def new
    @subscription = Subscription.new
  end

  def show
    @subscription = Subscription.find(params[:id])
  end
  def edit
    @subscription = Subscription.find(params[:id])
  end

  def create
    @subscription = Subscription.new(name: params[:subscription]['name'],plan_id: params[:subscription]['plan_id'], user_id: params[:subscription]["id"])
    @subscription.save!
    redirect_to @subscription
  end

  def update
    @subscription = Subscription.find(params[:id])
 
    if @subscription.update(subscription_params)
      redirect_to @subscription
    else
      render 'edit'
    end
  end

   def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
 
   redirect_to :action => :index
  end
  
  private
    def subscription_params
      params.require(:subscription).permit(:name, :plain_id)
    end
end
