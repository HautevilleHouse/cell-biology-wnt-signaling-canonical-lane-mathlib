import WntSignalingGateLemmas
import WntSignalingCanonicalModel

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

def ConstrainedWntSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wnt_signaling_endgame (A : AdmissibleClass) :
    ConstrainedWntSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse