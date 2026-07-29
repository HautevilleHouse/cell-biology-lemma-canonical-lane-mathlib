import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure EndothelialCascade where
  baxActivation : Prop
  bcl2Inhibition : Prop
  cytochromeCRelease : Prop
  caspase3Cleavage : Prop
  apoptosisExecuted : Prop

structure EndothelialCascadeEvidence (C : EndothelialCascade) where
  baxActivationClosed : C.baxActivation
  bcl2InhibitionClosed : C.bcl2Inhibition
  cytochromeCReleaseClosed : C.cytochromeCRelease
  caspase3CleavageClosed : C.caspase3Cleavage
  apoptosisExecutedClosed : C.apoptosisExecuted

def EndothelialCascadeClosed (C : EndothelialCascade) : Prop :=
  C.baxActivation ∧ C.bcl2Inhibition ∧ C.cytochromeCRelease ∧ C.caspase3Cleavage ∧ C.apoptosisExecuted

theorem endothelial_cascade_closed_from_evidence (C : EndothelialCascade) (E : EndothelialCascadeEvidence C) :
    EndothelialCascadeClosed C := by
  exact And.intro E.baxActivationClosed
    (And.intro E.bcl2InhibitionClosed
      (And.intro E.cytochromeCReleaseClosed
        (And.intro E.caspase3CleavageClosed E.apoptosisExecutedClosed)))

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse
