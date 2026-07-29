import WntSignalingPathwayCore

/-!
# Canonical Model of Wnt Signaling
-/

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure CanonicalModelPackage (P : WntPathwayPackage) where
  wnt3aLigand : Prop
  lrp5ReceptorCoreceptor : Prop
  axinDegradation : Prop
  gsk3Inhibition : Prop
  betaCateninNuclearAccumulation : Prop
  tcflEFTranscriptionalActivation : Prop

structure CanonicalModelEvidence {P : WntPathwayPackage}
    (M : CanonicalModelPackage P) where
  wnt3aLigandClosed : M.wnt3aLigand
  lrp5ReceptorCoreceptorClosed : M.lrp5ReceptorCoreceptor
  axinDegradationClosed : M.axinDegradation
  gsk3InhibitionClosed : M.gsk3Inhibition
  betaCateninNuclearAccumulationClosed : M.betaCateninNuclearAccumulation
  tcflEFTranscriptionalActivationClosed : M.tcflEFTranscriptionalActivation

def CanonicalModelClosed {P : WntPathwayPackage}
    (M : CanonicalModelPackage P) : Prop :=
  M.wnt3aLigand ∧ M.lrp5ReceptorCoreceptor ∧
  M.axinDegradation ∧ M.gsk3Inhibition ∧
  M.betaCateninNuclearAccumulation ∧
  M.tcflEFTranscriptionalActivation

theorem canonical_model_closed_from_evidence
    {P : WntPathwayPackage} (M : CanonicalModelPackage P)
    (E : CanonicalModelEvidence M) : CanonicalModelClosed M := by
  exact And.intro E.wnt3aLigandClosed
    (And.intro E.lrp5ReceptorCoreceptorClosed
      (And.intro E.axinDegradationClosed
        (And.intro E.gsk3InhibitionClosed
          (And.intro E.betaCateninNuclearAccumulationClosed
            E.tcflEFTranscriptionalActivationClosed))))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse