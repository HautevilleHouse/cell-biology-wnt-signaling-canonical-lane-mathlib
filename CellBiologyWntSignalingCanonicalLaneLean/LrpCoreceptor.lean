import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure LrpCoreceptorPackage where
  lrp5 : Type u
  lrp6 : Type v
  wntBinding : Prop
  phosphorylationByGsk3 : Prop
  axinRecruitment : Prop
  signalAmplification : Prop

structure LrpCoreceptorEvidence (L : LrpCoreceptorPackage) where
  wntBindingClosed : L.wntBinding
  phosphorylationByGsk3Closed : L.phosphorylationByGsk3
  axinRecruitmentClosed : L.axinRecruitment
  signalAmplificationClosed : L.signalAmplification

def LrpCoreceptorClosed (L : LrpCoreceptorPackage) : Prop :=
  L.wntBinding ∧ L.phosphorylationByGsk3 ∧ L.axinRecruitment ∧ L.signalAmplification

theorem lrp_coreceptor_closed_from_evidence (L : LrpCoreceptorPackage)
    (E : LrpCoreceptorEvidence L) : LrpCoreceptorClosed L := by
  exact And.intro E.wntBindingClosed
    (And.intro E.phosphorylationByGsk3Closed
      (And.intro E.axinRecruitmentClosed E.signalAmplificationClosed))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse