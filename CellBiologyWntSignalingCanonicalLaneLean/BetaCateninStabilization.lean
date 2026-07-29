import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyWntSignalingCanonicalLaneLean.WntSignalPathway

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure BetaCateninStabilizationPackage {W : WntSignalPathway} (S : WntSignalPathway) where
  destructionComplexInhibition : Prop
  gsk3Inhibition : Prop
  axinRecruitment : Prop
  betaCateninAccumulation : Prop
  nuclearTranslocation : Prop

type alias WntSignalPathwayEvidence := WntSignalPathwayEvidence

structure BetaCateninStabilizationEvidence {W : WntSignalPathway} {S : WntSignalPathway}
    (B : BetaCateninStabilizationPackage S) where
  destructionComplexInhibitionClosed : B.destructionComplexInhibition
  gsk3InhibitionClosed : B.gsk3Inhibition
  axinRecruitmentClosed : B.axinRecruitment
  betaCateninAccumulationClosed : B.betaCateninAccumulation
  nuclearTranslocationClosed : B.nuclearTranslocation

def BetaCateninStabilizationClosed {W : WntSignalPathway} {S : WntSignalPathway}
    (B : BetaCateninStabilizationPackage S) : Prop :=
  B.destructionComplexInhibition ∧ B.gsk3Inhibition ∧ B.axinRecruitment ∧
  B.betaCateninAccumulation ∧ B.nuclearTranslocation

theorem beta_catenin_stabilization_closed_from_evidence
    {W : WntSignalPathway} {S : WntSignalPathway}
    (B : BetaCateninStabilizationPackage S) (E : BetaCateninStabilizationEvidence B) :
    BetaCateninStabilizationClosed B := by
  exact And.intro E.destructionComplexInhibitionClosed
    (And.intro E.gsk3InhibitionClosed
      (And.intro E.axinRecruitmentClosed
        (And.intro E.betaCateninAccumulationClosed E.nuclearTranslocationClosed)))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse