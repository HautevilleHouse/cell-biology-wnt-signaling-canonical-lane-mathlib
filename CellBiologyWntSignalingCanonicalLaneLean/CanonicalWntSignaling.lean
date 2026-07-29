import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure WntAdmittedObject where
  cellContext : Type
  wntPathwayActivated : Prop
  betaCateninStable : Prop
  targetGeneExpression : Prop
  canonicalSignalClosed : betaCateninStable ∧ targetGeneExpression

structure AdmissibleClass where
  object : WntAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse