import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure EpidemiologyModelsPackage where
  susceptible : Prop
  infected : Prop
  recovered : Prop
  sirEquations : Prop
  basicReproductionNumber : Prop

structure EpidemiologyModelsEvidence (E : EpidemiologyModelsPackage) where
  susceptibleClosed : E.susceptible
  infectedClosed : E.infected
  recoveredClosed : E.recovered
  sirEquationsClosed : E.sirEquations
  basicReproductionNumberClosed : E.basicReproductionNumber

def EpidemiologyModelsClosed (E : EpidemiologyModelsPackage) : Prop :=
  E.susceptible ∧ E.infected ∧ E.recovered ∧ E.sirEquations ∧ E.basicReproductionNumber

theorem epidemiology_models_closed_from_evidence (E : EpidemiologyModelsPackage)
    (Ev : EpidemiologyModelsEvidence E) : EpidemiologyModelsClosed E := by
  exact And.intro Ev.susceptibleClosed (And.intro Ev.infectedClosed
    (And.intro Ev.recoveredClosed (And.intro Ev.sirEquationsClosed Ev.basicReproductionNumberClosed)))

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse