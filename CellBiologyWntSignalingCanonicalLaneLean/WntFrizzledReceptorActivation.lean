import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure WntFrizzledReceptorActivationPackage where
  wntLigandBinding : Prop
  lrp5_6CoReceptorRecruitment : Prop
  dishevelledRecruitment : Prop
  signalosomeFormation : Prop

structure WntFrizzledReceptorActivationEvidence (P : WntFrizzledReceptorActivationPackage) where
  wntLigandBindingClosed : P.wntLigandBinding
  lrp5_6CoReceptorRecruitmentClosed : P.lrp5_6CoReceptorRecruitment
  dishevelledRecruitmentClosed : P.dishevelledRecruitment
  signalosomeFormationClosed : P.signalosomeFormation

def WntFrizzledReceptorActivationClosed (P : WntFrizzledReceptorActivationPackage) : Prop :=
  P.wntLigandBinding ∧ P.lrp5_6CoReceptorRecruitment ∧
  P.dishevelledRecruitment ∧ P.signalosomeFormation

theorem wnt_frizzled_receptor_activation_closed_from_evidence
    (P : WntFrizzledReceptorActivationPackage)
    (E : WntFrizzledReceptorActivationEvidence P) :
    WntFrizzledReceptorActivationClosed P := by
  exact And.intro E.wntLigandBindingClosed
    (And.intro E.lrp5_6CoReceptorRecruitmentClosed
      (And.intro E.dishevelledRecruitmentClosed E.signalosomeFormationClosed))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse