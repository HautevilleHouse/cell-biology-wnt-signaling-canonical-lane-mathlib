import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyWntSignalingCanonicalLaneLean.BetaCateninStabilization

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure NuclearTranscriptionalOutputPackage {W : WntSignalPathway} {S : WntSignalPathway}
    (B : BetaCateninStabilizationPackage S) where
  tcfLefComplexFormation : Prop
  chromatinRemodeling : Prop
  targetGeneActivation : Prop
  cellFateDetermination : Prop

structure NuclearTranscriptionalOutputEvidence {W : WntSignalPathway} {S : WntSignalPathway}
    {B : BetaCateninStabilizationPackage S} (N : NuclearTranscriptionalOutputPackage B) where
  tcfLefComplexFormationClosed : N.tcfLefComplexFormation
  chromatinRemodelingClosed : N.chromatinRemodeling
  targetGeneActivationClosed : N.targetGeneActivation
  cellFateDeterminationClosed : N.cellFateDetermination

def NuclearTranscriptionalOutputClosed {W : WntSignalPathway} {S : WntSignalPathway}
    {B : BetaCateninStabilizationPackage S} (N : NuclearTranscriptionalOutputPackage B) : Prop :=
  N.tcfLefComplexFormation ∧ N.chromatinRemodeling ∧ N.targetGeneActivation ∧ N.cellFateDetermination

theorem nuclear_transcriptional_output_closed_from_evidence
    {W : WntSignalPathway} {S : WntSignalPathway}
    {B : BetaCateninStabilizationPackage S} (N : NuclearTranscriptionalOutputPackage B)
    (E : NuclearTranscriptionalOutputEvidence N) : NuclearTranscriptionalOutputClosed N := by
  exact And.intro E.tcfLefComplexFormationClosed
    (And.intro E.chromatinRemodelingClosed
      (And.intro E.targetGeneActivationClosed E.cellFateDeterminationClosed))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse