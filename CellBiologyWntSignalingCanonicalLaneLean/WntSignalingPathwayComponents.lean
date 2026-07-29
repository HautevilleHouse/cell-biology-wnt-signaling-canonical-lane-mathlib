import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyWntSignalingCanonicalLaneLean.WntSignalingCanonicalLaneMathlibObjects

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure WntReceptorPackage where
  receptorPresent : Prop
  ligandBinding : Prop
  signalTransduction : Prop

structure WntReceptorEvidence (R : WntReceptorPackage) where
  receptorPresentClosed : R.receptorPresent
  ligandBindingClosed : R.ligandBinding
  signalTransductionClosed : R.signalTransduction

def WntReceptorClosed (R : WntReceptorPackage) : Prop :=
  R.receptorPresent ∧ R.ligandBinding ∧ R.signalTransduction

theorem wnt_receptor_closed_from_evidence (R : WntReceptorPackage)
    (E : WntReceptorEvidence R) : WntReceptorClosed R := by
  exact And.intro E.receptorPresentClosed
    (And.intro E.ligandBindingClosed E.signalTransductionClosed)

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse