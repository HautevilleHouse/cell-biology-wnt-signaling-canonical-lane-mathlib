import HautevilleHouse.CellBiologyWntSignalingCanonicalLaneLean.LigandReceptorBinding
import HautevilleHouse.CellBiologyWntSignalingCanonicalLaneLean.BetaCateninStabilization
import HautevilleHouse.CellBiologyWntSignalingCanonicalLaneLean.NuclearTranscriptionalOutput

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure WntSignalingAnalyticFoundation where
  pathway : WntSignalPathway
  pathwayEvidence : WntSignalPathwayEvidence pathway
  binding : LigandReceptorBindingPackage pathway
  bindingEvidence : LigandReceptorBindingEvidence binding
  stabilization : BetaCateninStabilizationPackage pathway
  stabilizationEvidence : BetaCateninStabilizationEvidence stabilization
  transcriptionalOutput : NuclearTranscriptionalOutputPackage stabilization
  transcriptionalOutputEvidence : NuclearTranscriptionalOutputEvidence transcriptionalOutput

def WntSignalingAnalyticFoundationClosed (A : WntSignalingAnalyticFoundation) : Prop :=
  WntSignalPathwayClosed A.pathway ∧
  LigandReceptorBindingClosed A.binding ∧
  BetaCateninStabilizationClosed A.stabilization ∧
  NuclearTranscriptionalOutputClosed A.transcriptionalOutput

theorem wnt_signaling_analytic_foundation_closed_from_evidence
    (A : WntSignalingAnalyticFoundation) : WntSignalingAnalyticFoundationClosed A := by
  exact And.intro (wnt_signal_pathway_closed_from_evidence A.pathway A.pathwayEvidence)
    (And.intro (ligand_receptor_binding_closed_from_evidence A.binding A.bindingEvidence)
      (And.intro (beta_catenin_stabilization_closed_from_evidence A.stabilization A.stabilizationEvidence)
        (nuclear_transcriptional_output_closed_from_evidence A.transcriptionalOutput A.transcriptionalOutputEvidence)))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse