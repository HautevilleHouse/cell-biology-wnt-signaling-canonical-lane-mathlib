import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure BetaCateninDestructionComplexPackage where
  axinScaffoldPresent : Prop
  apcTumorSuppressorPresent : Prop
  gsk3KinaseActive : Prop
  betaCateninPhosphorylation : Prop
  betaCateninDegradation : Prop

structure BetaCateninDestructionComplexEvidence (C : BetaCateninDestructionComplexPackage) where
  axinScaffoldPresentClosed : C.axinScaffoldPresent
  apcTumorSuppressorPresentClosed : C.apcTumorSuppressorPresent
  gsk3KinaseActiveClosed : C.gsk3KinaseActive
  betaCateninPhosphorylationClosed : C.betaCateninPhosphorylation
  betaCateninDegradationClosed : C.betaCateninDegradation

def BetaCateninDestructionComplexClosed (C : BetaCateninDestructionComplexPackage) : Prop :=
  C.axinScaffoldPresent ∧ C.apcTumorSuppressorPresent ∧ C.gsk3KinaseActive ∧
  C.betaCateninPhosphorylation ∧ C.betaCateninDegradation

theorem beta_catenin_destruction_complex_closed_from_evidence
    (C : BetaCateninDestructionComplexPackage)
    (E : BetaCateninDestructionComplexEvidence C) :
    BetaCateninDestructionComplexClosed C := by
  exact And.intro E.axinScaffoldPresentClosed
    (And.intro E.apcTumorSuppressorPresentClosed
      (And.intro E.gsk3KinaseActiveClosed
        (And.intro E.betaCateninPhosphorylationClosed
          E.betaCateninDegradationClosed)))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse