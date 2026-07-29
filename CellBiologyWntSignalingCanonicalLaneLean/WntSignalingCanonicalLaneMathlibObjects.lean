import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellType where
  carrier : Type
  topology : TopologicalSpace carrier

structure WntAdmittedObject where
  cell : CellType
  hasWntReceptor : Prop
  hasBetaCatenin : Prop
  signalingModel : Type
  signalingTopology : TopologicalSpace signalingModel
  pathwayActivated : Prop
  conclusion : pathwayActivated

structure WntEndgameState where
  object : WntAdmittedObject

def WntWitnessClosed (O : WntAdmittedObject) : Prop :=
  O.pathwayActivated

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse