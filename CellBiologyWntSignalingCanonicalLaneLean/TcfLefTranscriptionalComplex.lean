import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure TcfLefTranscriptionalComplexPackage where
  tcfLef : Type u
  betaCateninBinding : Prop
  grouchoDisplacement : Prop
  chromatinRemodeling : Prop
  targetGeneActivation : Prop

structure TcfLefTranscriptionalComplexEvidence (T : TcfLefTranscriptionalComplexPackage) where
  betaCateninBindingClosed : T.betaCateninBinding
  grouchoDisplacementClosed : T.grouchoDisplacement
  chromatinRemodelingClosed : T.chromatinRemodeling
  targetGeneActivationClosed : T.targetGeneActivation

def TcfLefTranscriptionalComplexClosed (T : TcfLefTranscriptionalComplexPackage) : Prop :=
  T.betaCateninBinding ∧ T.grouchoDisplacement ∧ T.chromatinRemodeling ∧ T.targetGeneActivation

theorem tcf_lef_transcriptional_complex_closed_from_evidence
    (T : TcfLefTranscriptionalComplexPackage)
    (E : TcfLefTranscriptionalComplexEvidence T) : TcfLefTranscriptionalComplexClosed T := by
  exact And.intro E.betaCateninBindingClosed
    (And.intro E.grouchoDisplacementClosed
      (And.intro E.chromatinRemodelingClosed E.targetGeneActivationClosed))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse