import CellBiologyLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CellBiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellBiologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse