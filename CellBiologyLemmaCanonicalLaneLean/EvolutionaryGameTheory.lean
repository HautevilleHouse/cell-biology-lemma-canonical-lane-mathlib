import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  payoffMatrix : Prop
  replicatorDynamics : Prop
  evolutionaryStableStrategy : Prop
  nashEquilibrium : Prop
  mutationRate : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  payoffMatrixClosed : E.payoffMatrix
  replicatorDynamicsClosed : E.replicatorDynamics
  evolutionaryStableStrategyClosed : E.evolutionaryStableStrategy
  nashEquilibriumClosed : E.nashEquilibrium
  mutationRateClosed : E.mutationRate

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.payoffMatrix ∧ E.replicatorDynamics ∧ E.evolutionaryStableStrategy ∧ E.nashEquilibrium ∧ E.mutationRate

theorem evolutionary_game_theory_closed_from_evidence (E : EvolutionaryGameTheoryPackage)
    (Ev : EvolutionaryGameTheoryEvidence E) : EvolutionaryGameTheoryClosed E := by
  exact And.intro Ev.payoffMatrixClosed (And.intro Ev.replicatorDynamicsClosed
    (And.intro Ev.evolutionaryStableStrategyClosed (And.intro Ev.nashEquilibriumClosed Ev.mutationRateClosed)))

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse