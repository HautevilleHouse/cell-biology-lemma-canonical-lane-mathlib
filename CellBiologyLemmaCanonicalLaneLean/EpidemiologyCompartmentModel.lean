import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure EpidemiologyCompartment where
  compartmentCount : Nat
  transmissionRates : List (List ℝ)
  recoveryRates : List ℝ
  basicReproductiveNumber : ℝ
  endemicEquilibriumStable : Prop

structure EpidemiologyEvidence (E : EpidemiologyCompartment) where
  basicReproductiveNumberPositiveClosed : E.basicReproductiveNumber > 0
  endemicEquilibriumStableClosed : E.endemicEquilibriumStable

def EpidemiologyClosed (E : EpidemiologyCompartment) : Prop :=
  E.basicReproductiveNumber > 0 ∧ E.endemicEquilibriumStable

theorem epidemiology_closed_from_evidence (E : EpidemiologyCompartment) (Ev : EpidemiologyEvidence E) :
    EpidemiologyClosed E := by
  exact And.intro Ev.basicReproductiveNumberPositiveClosed Ev.endemicEquilibriumStableClosed

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse
