class PokemonSerializer
  def initialize(pokemon_obj)
    @pokemon = pokemon_obj
  end

  def serialize
    options = {
      include: {
        trainer: {
        only: [:id, :name]
        }
      },
      except: [:created_at, :updated_at, :trainer_id]
    }
    @pokemon.to_json(options)
  end
end