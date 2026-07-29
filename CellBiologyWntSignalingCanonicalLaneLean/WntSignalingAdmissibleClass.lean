import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure WntAdmittedObject where
  cell : Type u
  wntLigand : Type v
  wntReceptor : Type w
  pathwayActive : Prop
  betaCateninTranslocation : Prop
  conclusion : betaCateninTranslocation

structure AdmissibleClass where
  object : WntAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WntWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse