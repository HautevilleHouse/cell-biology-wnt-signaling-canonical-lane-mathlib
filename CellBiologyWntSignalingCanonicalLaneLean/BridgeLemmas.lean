import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellBiologyWntSignalingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse