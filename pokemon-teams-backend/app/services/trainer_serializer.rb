class TrainerSerializer
  def initialize(trainer_obj)
    @trainer = trainer_obj
  end

  def serialize
    options = {
      include: {
        pokemons: {
          except: [:created_at, :updated_at, :trainer_id]
        }
      },
      except: [:created_at, :updated_at]
    }
    @trainer.to_json(options)
  end
end