import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure TCFLEFFTranscriptionalActivationPackage where
  betaCateninNuclearTranslocation : Prop
  tcfLefComplexFormation : Prop
  targetGeneExpression : Prop
  cellFateDetermination : Prop

structure TCFLEFFTranscriptionalActivationEvidence (P : TCFLEFFTranscriptionalActivationPackage) where
  betaCateninNuclearTranslocationClosed : P.betaCateninNuclearTranslocation
  tcfLefComplexFormationClosed : P.tcfLefComplexFormation
  targetGeneExpressionClosed : P.targetGeneExpression
  cellFateDeterminationClosed : P.cellFateDetermination

def TCFLEFFTranscriptionalActivationClosed (P : TCFLEFFTranscriptionalActivationPackage) : Prop :=
  P.betaCateninNuclearTranslocation ∧ P.tcfLefComplexFormation ∧
  P.targetGeneExpression ∧ P.cellFateDetermination

theorem tcf_lef_transcriptional_activation_closed_from_evidence
    (P : TCFLEFFTranscriptionalActivationPackage)
    (E : TCFLEFFTranscriptionalActivationEvidence P) :
    TCFLEFFTranscriptionalActivationClosed P := by
  exact And.intro E.betaCateninNuclearTranslocationClosed
    (And.intro E.tcfLefComplexFormationClosed
      (And.intro E.targetGeneExpressionClosed E.cellFateDeterminationClosed))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse