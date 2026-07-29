import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure AdmissibleClass where
  object : CellBiologyWntSignalingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellBiologyWntSignalingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse