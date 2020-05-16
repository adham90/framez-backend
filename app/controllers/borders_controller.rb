# frozen_string_literal: true

class BordersController < ApplicationController
  before_action :set_border, only: %i[show update destroy]

  # GET /borders
  def index
    @borders = Border.all

    render json: BorderBlueprint.render(@borders)
  end

  # GET /borders/1
  def show
    render json: @border
  end

  # POST /borders
  def create
    @border = Border.new(border_params)

    if @border.save
      render json: @border, status: :created, location: @border
    else
      render json: @border.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /borders/1
  def update
    if @border.update(border_params)
      render json: @border
    else
      render json: @border.errors, status: :unprocessable_entity
    end
  end

  # DELETE /borders/1
  def destroy
    @border.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_border
    @border = Border.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def border_params
    params.fetch(:border, {})
  end
end
