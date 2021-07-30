class V1::PetsController < ApplicationController
  before_action :set_pet, only: [:show]

  # GET /v1/pets
  def index
    @pets = Pet.all

    render json: @pets.to_json(except: [:created_at, :updated_at])
  end

  # GET /v1/pets/1
  def show
    render json: @pets.to_json(except: [:created_at, :updated_at])
  end

  # POST /v1/pets
  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      render json: @pet.to_json(except: [:created_at, :updated_at]), status: :created
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_params
      params.permit(:name, :tag)
    end
end
