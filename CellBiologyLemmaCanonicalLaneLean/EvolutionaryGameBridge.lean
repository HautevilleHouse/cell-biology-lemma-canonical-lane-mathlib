import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure EvolutionaryGame where
  payoffMatrix : List (List ℝ)
  strategyFrequencies : List ℝ
  replicatorEquationStable : Prop
  evolutionaryStableStrategy : Prop

structure EvolutionaryGameEvidence (G : EvolutionaryGame) where
  replicatorEquationStableClosed : G.replicatorEquationStable
  evolutionaryStableStrategyClosed : G.evolutionaryStableStrategy

def EvolutionaryGameClosed (G : EvolutionaryGame) : Prop :=
  G.replicatorEquationStable ∧ G.evolutionaryStableStrategy

theorem evolutionary_game_closed_from_evidence (G : EvolutionaryGame) (E : EvolutionaryGameEvidence G) :
    EvolutionaryGameClosed G := by
  exact And.intro E.replicatorEquationStableClosed E.evolutionaryStableStrategyClosed

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse
