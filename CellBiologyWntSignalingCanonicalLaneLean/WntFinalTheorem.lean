import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

def ConstrainedWntClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wnt_endgame (A : AdmissibleClass) :
    ConstrainedWntClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse