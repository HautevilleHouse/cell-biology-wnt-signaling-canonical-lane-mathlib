import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure WntInhibitorsPackage where
  dkk : Type u
  sfrp : Type v
  wif1 : Type w
  dkkBinding : Prop
  sfrpSequestration : Prop
  wif1Inhibition : Prop
  pathwayModulation : Prop

structure WntInhibitorsEvidence (I : WntInhibitorsPackage) where
  dkkBindingClosed : I.dkkBinding
  sfrpSequestrationClosed : I.sfrpSequestration
  wif1InhibitionClosed : I.wif1Inhibition
  pathwayModulationClosed : I.pathwayModulation

def WntInhibitorsClosed (I : WntInhibitorsPackage) : Prop :=
  I.dkkBinding ∧ I.sfrpSequestration ∧ I.wif1Inhibition ∧ I.pathwayModulation

theorem wnt_inhibitors_closed_from_evidence (I : WntInhibitorsPackage)
    (E : WntInhibitorsEvidence I) : WntInhibitorsClosed I := by
  exact And.intro E.dkkBindingClosed
    (And.intro E.sfrpSequestrationClosed
      (And.intro E.wif1InhibitionClosed E.pathwayModulationClosed))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse