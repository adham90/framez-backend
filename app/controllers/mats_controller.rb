# frozen_string_literal: true

class MatsController < ApplicationController
  before_action :set_mat, only: %i[show update destroy]

  # GET /mats
  def index
    @mats = Mat.all

    render json: MatBlueprint.render(@mats)
  end

  # GET /mats/1
  def show
    render json: @mat
  end

  # POST /mats
  def create
    @mat = Mat.new(mat_params)

    if @mat.save
      render json: @mat, status: :created, location: @mat
    else
      render json: @mat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mats/1
  def update
    if @mat.update(mat_params)
      render json: @mat
    else
      render json: @mat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mats/1
  def destroy
    @mat.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_mat
    @mat = Mat.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def mat_params
    params.fetch(:mat, {})
  end
end
