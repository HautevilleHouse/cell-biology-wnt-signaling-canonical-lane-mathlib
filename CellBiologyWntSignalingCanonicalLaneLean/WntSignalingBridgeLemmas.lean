import canonicalLaneMathlib.BridgeLemmas
import WntSignalingAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WntWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse