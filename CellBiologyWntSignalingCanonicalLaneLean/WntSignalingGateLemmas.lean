import canonicalLaneMathlib.GateLemmas
import WntSignalingBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse