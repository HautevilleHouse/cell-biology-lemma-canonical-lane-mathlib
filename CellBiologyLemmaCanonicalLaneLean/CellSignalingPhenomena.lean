import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure CellSignalingPackage where
  ligandBinding : Prop
  receptorDimerization : Prop
  kinaseCascade : Prop
  signalAmplification : Prop
  transcriptionalResponse : Prop

structure CellSignalingEvidence (C : CellSignalingPackage) where
  ligandBindingClosed : C.ligandBinding
  receptorDimerizationClosed : C.receptorDimerization
  kinaseCascadeClosed : C.kinaseCascade
  signalAmplificationClosed : C.signalAmplification
  transcriptionalResponseClosed : C.transcriptionalResponse

def CellSignalingClosed (C : CellSignalingPackage) : Prop :=
  C.ligandBinding ∧ C.receptorDimerization ∧ C.kinaseCascade ∧ C.signalAmplification ∧ C.transcriptionalResponse

theorem cell_signaling_closed_from_evidence (C : CellSignalingPackage)
    (E : CellSignalingEvidence C) : CellSignalingClosed C := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.receptorDimerizationClosed
      (And.intro E.kinaseCascadeClosed
        (And.intro E.signalAmplificationClosed E.transcriptionalResponseClosed)))

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse