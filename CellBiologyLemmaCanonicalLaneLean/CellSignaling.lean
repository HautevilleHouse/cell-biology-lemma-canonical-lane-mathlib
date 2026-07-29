import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure CellSignalingPackage where
  ligandReceptorBinding : Prop
  kinaseCascade : Prop
  secondMessenger : Prop
  geneExpressionChange : Prop
  cellularResponse : Prop

structure CellSignalingEvidence (C : CellSignalingPackage) where
  ligandReceptorBindingClosed : C.ligandReceptorBinding
  kinaseCascadeClosed : C.kinaseCascade
  secondMessengerClosed : C.secondMessenger
  geneExpressionChangeClosed : C.geneExpressionChange
  cellularResponseClosed : C.cellularResponse

def CellSignalingClosed (C : CellSignalingPackage) : Prop :=
  C.ligandReceptorBinding ∧ C.kinaseCascade ∧ C.secondMessenger ∧ C.geneExpressionChange ∧ C.cellularResponse

theorem cell_signaling_closed_from_evidence (C : CellSignalingPackage)
    (Ev : CellSignalingEvidence C) : CellSignalingClosed C := by
  exact And.intro Ev.ligandReceptorBindingClosed (And.intro Ev.kinaseCascadeClosed
    (And.intro Ev.secondMessengerClosed (And.intro Ev.geneExpressionChangeClosed Ev.cellularResponseClosed)))

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse