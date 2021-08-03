require "rails_helper"

describe "Pets API" do
  describe "GET /pets", type: :request do
    it "Retorna todos las mascotas" do
      FactoryBot.create(:pet, id: 1, name: "Lila", tag: "Labrador")
      FactoryBot.create(:pet, id: 2, name: "Kira", tag: "Dalmata")
      FactoryBot.create(:pet, id: 3, name: "Nala", tag: "Pastor Aleman")

      get "/v1/pets"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end

  describe "POST /pets", type: :request do
    before do
      post "/v1/pets", params: {name: "Oso", tag: "Labrador"}
    end

    it "Retorna el nombre de la mascota" do
      expect(JSON.parse(response.body)["name"]).to eq("Oso")
    end

    it "Retorna el tag de la mascota" do
      expect(JSON.parse(response.body)["tag"]).to eq("Labrador")
    end

    it "Retorna el status created" do
      expect(response).to have_http_status(:created)
    end
  end
end
