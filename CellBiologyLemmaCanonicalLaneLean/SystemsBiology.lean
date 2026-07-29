import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure SystemsBiologyPackage where
  geneRegulatoryNetwork : Prop
  metabolicPathway : Prop
  signalTransduction : Prop
  odeModel : Prop
  feedbackLoop : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  geneRegulatoryNetworkClosed : S.geneRegulatoryNetwork
  metabolicPathwayClosed : S.metabolicPathway
  signalTransductionClosed : S.signalTransduction
  odeModelClosed : S.odeModel
  feedbackLoopClosed : S.feedbackLoop

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.geneRegulatoryNetwork ∧ S.metabolicPathway ∧ S.signalTransduction ∧ S.odeModel ∧ S.feedbackLoop

theorem systems_biology_closed_from_evidence (S : SystemsBiologyPackage)
    (Ev : SystemsBiologyEvidence S) : SystemsBiologyClosed S := by
  exact And.intro Ev.geneRegulatoryNetworkClosed (And.intro Ev.metabolicPathwayClosed
    (And.intro Ev.signalTransductionClosed (And.intro Ev.odeModelClosed Ev.feedbackLoopClosed)))

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse