import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure CellCyclePackage where
  cyclinDynamics : Prop
  checkpointControl : Prop
  dnaDamageResponse : Prop
  mitosisRegulation : Prop
  apoptosisTrigger : Prop

structure CellCycleEvidence (C : CellCyclePackage) where
  cyclinDynamicsClosed : C.cyclinDynamics
  checkpointControlClosed : C.checkpointControl
  dnaDamageResponseClosed : C.dnaDamageResponse
  mitosisRegulationClosed : C.mitosisRegulation
  apoptosisTriggerClosed : C.apoptosisTrigger

def CellCycleClosed (C : CellCyclePackage) : Prop :=
  C.cyclinDynamics ∧ C.checkpointControl ∧
  C.dnaDamageResponse ∧ C.mitosisRegulation ∧ C.apoptosisTrigger

theorem cell_cycle_closed_from_evidence (C : CellCyclePackage)
    (E : CellCycleEvidence C) : CellCycleClosed C := by
  exact And.intro E.cyclinDynamicsClosed
    (And.intro E.checkpointControlClosed
      (And.intro E.dnaDamageResponseClosed
        (And.intro E.mitosisRegulationClosed E.apoptosisTriggerClosed)))

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse