class PizzasController < ApplicationController
  def show
    @pizza = Pizza.find(params[:id])
  end

  def index
    @pizzas = Pizza.all
    @order_item = current_order.order_items.new
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pizza
    @pizza = Pizza.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pizza_params
    params.require(:pizza).permit(:recipe_id, :crust_id)
  end
end
