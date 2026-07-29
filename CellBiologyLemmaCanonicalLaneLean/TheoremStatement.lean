import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure CellBiologyAdmittedObject where
  populationDynamicsModel : Prop
  evolutionaryStabilityCondition : Prop
  reproductionNumber : Prop
  conclusion : populationDynamicsModel ∧ evolutionaryStabilityCondition ∧ reproductionNumber

def CellBiologyWitnessClosed (O : CellBiologyAdmittedObject) : Prop :=
  O.populationDynamicsModel ∧ O.evolutionaryStabilityCondition ∧ O.reproductionNumber

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse
