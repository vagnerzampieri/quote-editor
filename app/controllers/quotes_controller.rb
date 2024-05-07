# frozen_string_literal: true

# Description: This file contains the QuotesController.
class QuotesController < ApplicationController
  before_action :set_quote, only: %i[show edit update destroy]

  def index
    @quotes = current_company.quotes.ordered
  end

  def show
    @line_item_dates = @quote.line_item_dates.ordered
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = current_company.quotes.build(quote_params)

    if @quote.save
      notice = "Quote was successfully created."

      respond_to do |format|
        format.html { redirect_to quotes_path, notice: }
        format.turbo_stream { flash.now[:notice] = notice }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @quote.update(quote_params)
      notice = "Quote was successfully updated."

      respond_to do |format|
        format.html { redirect_to quotes_path, notice: }
        format.turbo_stream { flash.now[:notice] = notice }
      end
    else
      render :edit
    end
  end

  def destroy
    @quote.destroy
    notice = "Quote was successfully destroyed."

    respond_to do |format|
      format.html { redirect_to quotes_path, notice: }
      format.turbo_stream { flash.now[:notice] = notice }
    end
  end

  private

  def set_quote
    @quote = current_company.quotes.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end
