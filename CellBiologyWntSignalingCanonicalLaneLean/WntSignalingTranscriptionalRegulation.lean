import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyWntSignalingCanonicalLaneLean.WntSignalingBetaCateninStabilization

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure TcfLefComplexPackage where
  betaCateninNuclear : Prop
  tcfLefBound : Prop
  targetGeneActivated : Prop

structure TcfLefComplexEvidence (T : TcfLefComplexPackage) where
  betaCateninNuclearClosed : T.betaCateninNuclear
  tcfLefBoundClosed : T.tcfLefBound
  targetGeneActivatedClosed : T.targetGeneActivated

def TcfLefComplexClosed (T : TcfLefComplexPackage) : Prop :=
  T.betaCateninNuclear ∧ T.tcfLefBound ∧ T.targetGeneActivated

theorem tcf_lef_complex_closed_from_evidence (T : TcfLefComplexPackage)
    (E : TcfLefComplexEvidence T) : TcfLefComplexClosed T := by
  exact And.intro E.betaCateninNuclearClosed
    (And.intro E.tcfLefBoundClosed E.targetGeneActivatedClosed)

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse