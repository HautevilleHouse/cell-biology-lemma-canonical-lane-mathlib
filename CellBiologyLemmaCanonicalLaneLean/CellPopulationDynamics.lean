import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

structure CellPopulationModel where
  speciesCount : Nat
  growthRates : List ℝ
  interactionMatrix : List (List ℝ)
  resourceLimits : List ℝ
  equilibriumExistence : Prop

structure CellPopulationEvidence (M : CellPopulationModel) where
  equilibriumExistenceClosed : M.equilibriumExistence
  growthRatesNonnegativeClosed : ∀ r ∈ M.growthRates, r ≥ 0

def CellPopulationClosed (M : CellPopulationModel) : Prop :=
  M.equilibriumExistence ∧ (∀ r ∈ M.growthRates, r ≥ 0)

theorem cell_population_closed_from_evidence (M : CellPopulationModel) (E : CellPopulationEvidence M) :
    CellPopulationClosed M := by
  exact And.intro E.equilibriumExistenceClosed E.growthRatesNonnegativeClosed

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse
