import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure PopulationDynamicsPackage where
  populationSize : Type u
  growthRate : Type v
  carryingCapacity : Type w
  logisticEquation : Prop
  equilibriumStability : Prop
  bifurcationParameter : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  logisticEquationClosed : P.logisticEquation
  equilibriumStabilityClosed : P.equilibriumStability
  bifurcationParameterClosed : P.bifurcationParameter

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.logisticEquation ∧ P.equilibriumStability ∧ P.bifurcationParameter

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.logisticEquationClosed
    (And.intro E.equilibriumStabilityClosed E.bifurcationParameterClosed)

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse