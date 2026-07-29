import CellBiologyLemmaCanonicalLaneLean.AdmissibleClass
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellPopulation where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellBiologyAdmittedObject where
  population : CellPopulation
  growthModel : Prop
  equilibriumState : Prop
  perturbationResponse : Prop
  conclusion : perturbationResponse

structure CellBiologyEndgameState where
  object : CellBiologyAdmittedObject

def CellBiologyWitnessClosed (O : CellBiologyAdmittedObject) : Prop :=
  O.perturbationResponse

end CellBiologyLemmaCanonicalLaneLean
end HautevilleHouse