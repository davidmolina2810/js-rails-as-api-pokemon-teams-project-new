class PokemonsController < ApplicationController
  # def index 
  #   pokemons = Pokemon.all
  #   render json: PokemonSerializer.new(pokemons).serialize
  # end

  # def show 
  #   pokemon = Pokemon.find_by(id: params[:id])
  #   render json: PokemonSerializer.new(pokemon).serialize
  # end

  def create 
    name = Faker::Name.first_name
    species = Faker::Games::Pokemon.name
    pokemon = Pokemon.create(nickname: name, species: species, trainer_id: trainer.id)
    render json: PokemonSerializer(pokemon).serialize
  end

  def destroy 
    pokemon = Pokemon.find_by(id: params[:id])
    pokemon.destroy
    render json: PokemonSerializer(pokemon).serialize
  end

end
