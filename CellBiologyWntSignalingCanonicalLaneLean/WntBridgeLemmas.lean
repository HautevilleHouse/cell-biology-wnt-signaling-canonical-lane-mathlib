import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.canonicalSignalClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.canonicalSignalClosed

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse