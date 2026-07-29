import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure WntSignalingPathwayPackage where
  ligand : Type u
  receptor : Type v
  betaCatenin : Type w
  tcfLef : Type x
  ligandBinding : Prop
  receptorActivation : Prop
  betaCateninStabilization : Prop
  nuclearTranslocation : Prop
  targetGeneExpression : Prop

structure WntSignalingPathwayEvidence (P : WntSignalingPathwayPackage) where
  ligandBindingClosed : P.ligandBinding
  receptorActivationClosed : P.receptorActivation
  betaCateninStabilizationClosed : P.betaCateninStabilization
  nuclearTranslocationClosed : P.nuclearTranslocation
  targetGeneExpressionClosed : P.targetGeneExpression

def WntSignalingPathwayClosed (P : WntSignalingPathwayPackage) : Prop :=
  P.ligandBinding ∧ P.receptorActivation ∧ P.betaCateninStabilization ∧
  P.nuclearTranslocation ∧ P.targetGeneExpression

theorem wnt_signaling_pathway_closed_from_evidence (P : WntSignalingPathwayPackage)
    (E : WntSignalingPathwayEvidence P) : WntSignalingPathwayClosed P := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.receptorActivationClosed
      (And.intro E.betaCateninStabilizationClosed
        (And.intro E.nuclearTranslocationClosed E.targetGeneExpressionClosed)))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse