const BASE_URL = "http://localhost:3000"
const TRAINERS_URL = `${BASE_URL}/trainers`
const POKEMONS_URL = `${BASE_URL}/pokemons`

document.addEventListener("DOMContentLoaded", () => {
  // for each trainer
    // create div with class 'card'
  fetchTrainers()

})

function fetchTrainers() {
  fetch(TRAINERS_URL)
  .then(res => res.json())
  .then(data => console.log(data))
}