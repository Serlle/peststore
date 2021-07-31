class V1::PetsController < ApplicationController
  before_action :set_pet, only: [:show]
  DEFAULT_PETS_LIMIT = 10

  # GET /v1/pets
  def index
    collection_all = Pet.all
    pet = Pet.find_by(id: params[:cursor])
    collection = collection_all.where("id > ?", pet.id) if pet.present?
    collection = collection.limit(limit)
    binding.irb
    response.headers["X-Next"] = v1_pets_url(limit: limit, cursor: collection.last.id)
    render json: collection.to_json(except: [:created_at, :updated_at])

    # @pets = Pet.all.limit(params[:limit].present? ? params[:limit].to_i : DEFAULT_PETS_LIMIT)
    #
    # render json: @pets.to_json(except: [:created_at, :updated_at])
  end

  # GET /v1/pets/1
  def show
    render json: @pet.to_json(except: [:created_at, :updated_at])
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

  def limit
    params[:limit].present? ? params[:limit].to_i : DEFAULT_PETS_LIMIT
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_pet
    @pet = Pet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pet_params
    params.permit(:name, :tag)
  end
end
