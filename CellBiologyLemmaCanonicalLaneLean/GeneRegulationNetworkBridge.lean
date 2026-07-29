import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure GeneRegulationNetwork where
  transcriptionFactors : List String
  targetGenes : List String
  activationEdges : List (String × String)
  repressionEdges : List (String × String)
  steadyStateExpression : Prop

structure GeneRegulationEvidence (G : GeneRegulationNetwork) where
  steadyStateExpressionClosed : G.steadyStateExpression
  activationConsistentClosed : ∀ (tf, tg) ∈ G.activationEdges, tf ∈ G.transcriptionFactors → tg ∈ G.targetGenes

def GeneRegulationClosed (G : GeneRegulationNetwork) : Prop :=
  G.steadyStateExpression ∧ (∀ (tf, tg) ∈ G.activationEdges, tf ∈ G.transcriptionFactors → tg ∈ G.targetGenes)

theorem gene_regulation_closed_from_evidence (G : GeneRegulationNetwork) (E : GeneRegulationEvidence G) :
    GeneRegulationClosed G := by
  exact And.intro E.steadyStateExpressionClosed E.activationConsistentClosed

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse
