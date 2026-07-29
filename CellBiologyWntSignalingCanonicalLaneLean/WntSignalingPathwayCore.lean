import canonicalLaneMathlib.Pathway
import WntSignalingAdmissibleClass

/-!
# Wnt Signaling Pathway Core Package
-/

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure WntPathwayPackage where
  ligandReceptorBinding : Prop
  dishevelledActivation : Prop
  betaCateninStabilization : Prop
  tcfLefTranscription : Prop
  targetGeneExpression : Prop

structure WntPathwayEvidence (P : WntPathwayPackage) where
  ligandReceptorBindingClosed : P.ligandReceptorBinding
  dishevelledActivationClosed : P.dishevelledActivation
  betaCateninStabilizationClosed : P.betaCateninStabilization
  tcfLefTranscriptionClosed : P.tcfLefTranscription
  targetGeneExpressionClosed : P.targetGeneExpression

def WntPathwayClosed (P : WntPathwayPackage) : Prop :=
  P.ligandReceptorBinding ∧ P.dishevelledActivation ∧
  P.betaCateninStabilization ∧ P.tcfLefTranscription ∧
  P.targetGeneExpression

theorem wnt_pathway_closed_from_evidence
    (P : WntPathwayPackage) (E : WntPathwayEvidence P) :
    WntPathwayClosed P := by
  exact And.intro E.ligandReceptorBindingClosed
    (And.intro E.dishevelledActivationClosed
      (And.intro E.betaCateninStabilizationClosed
        (And.intro E.tcfLefTranscriptionClosed E.targetGeneExpressionClosed)))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse