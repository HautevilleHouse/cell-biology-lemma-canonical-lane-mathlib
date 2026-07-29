import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure SignalingPathway where
  receptorActivation : Prop
  kinaseCascade : Prop
  secondMessenger : Prop
  transcriptionFactorActivation : Prop
  geneExpressionChange : Prop

structure SignalingPathwayEvidence (S : SignalingPathway) where
  receptorActivationClosed : S.receptorActivation
  kinaseCascadeClosed : S.kinaseCascade
  secondMessengerClosed : S.secondMessenger
  transcriptionFactorActivationClosed : S.transcriptionFactorActivation
  geneExpressionChangeClosed : S.geneExpressionChange

def SignalingPathwayClosed (S : SignalingPathway) : Prop :=
  S.receptorActivation ∧ S.kinaseCascade ∧ S.secondMessenger ∧ S.transcriptionFactorActivation ∧ S.geneExpressionChange

theorem signaling_pathway_closed_from_evidence (S : SignalingPathway) (E : SignalingPathwayEvidence S) :
    SignalingPathwayClosed S := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.kinaseCascadeClosed
      (And.intro E.secondMessengerClosed
        (And.intro E.transcriptionFactorActivationClosed E.geneExpressionChangeClosed)))

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse
