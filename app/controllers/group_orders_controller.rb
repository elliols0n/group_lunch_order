class GroupOrdersController < ApplicationController
  def index
    @group_orders = GroupOrder.all

    render("group_orders/index.html.erb")
  end

  def show
    @group_order = GroupOrder.find(params[:id])

    render("group_orders/show.html.erb")
  end

  def new
    @group_order = GroupOrder.new

    render("group_orders/new.html.erb")
  end

  def create
    @group_order = GroupOrder.new

    @group_order.receipt = params[:receipt]
    @group_order.price = params[:price]
    @group_order.restaurant_id = params[:restaurant_id]

    save_status = @group_order.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/group_orders/new", "/create_group_order"
        redirect_to("/group_orders")
      else
        redirect_back(:fallback_location => "/", :notice => "Group order created successfully.")
      end
    else
      render("group_orders/new.html.erb")
    end
  end

  def edit
    @group_order = GroupOrder.find(params[:id])

    render("group_orders/edit.html.erb")
  end

  def update
    @group_order = GroupOrder.find(params[:id])

    @group_order.receipt = params[:receipt]
    @group_order.price = params[:price]
    @group_order.restaurant_id = params[:restaurant_id]

    save_status = @group_order.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/group_orders/#{@group_order.id}/edit", "/update_group_order"
        redirect_to("/group_orders/#{@group_order.id}", :notice => "Group order updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Group order updated successfully.")
      end
    else
      render("group_orders/edit.html.erb")
    end
  end

  def destroy
    @group_order = GroupOrder.find(params[:id])

    @group_order.destroy

    if URI(request.referer).path == "/group_orders/#{@group_order.id}"
      redirect_to("/", :notice => "Group order deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Group order deleted.")
    end
  end
end
