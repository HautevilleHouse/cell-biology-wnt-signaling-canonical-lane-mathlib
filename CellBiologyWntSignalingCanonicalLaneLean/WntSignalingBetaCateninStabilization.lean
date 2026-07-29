import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyWntSignalingCanonicalLaneLean.WntSignalingPathwayComponents

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure BetaCateninDestructionComplexPackage where
  gsk3Active : Prop
  axinPresent : Prop
  apcPresent : Prop
  betaCateninDegraded : Prop

structure BetaCateninDestructionComplexEvidence (D : BetaCateninDestructionComplexPackage) where
  gsk3ActiveClosed : D.gsk3Active
  axinPresentClosed : D.axinPresent
  apcPresentClosed : D.apcPresent
  betaCateninDegradedClosed : D.betaCateninDegraded

def BetaCateninDestructionComplexClosed (D : BetaCateninDestructionComplexPackage) : Prop :=
  D.gsk3Active ∧ D.axinPresent ∧ D.apcPresent ∧ D.betaCateninDegraded

theorem beta_catenin_destruction_complex_closed_from_evidence
    (D : BetaCateninDestructionComplexPackage)
    (E : BetaCateninDestructionComplexEvidence D) :
    BetaCateninDestructionComplexClosed D := by
  exact And.intro E.gsk3ActiveClosed
    (And.intro E.axinPresentClosed
      (And.intro E.apcPresentClosed E.betaCateninDegradedClosed))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse