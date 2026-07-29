import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyWntSignalingCanonicalLaneLean.WntSignalPathway

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure LigandReceptorBindingPackage {W : WntSignalPathway} (S : WntSignalPathway) where
  wntLigandSecreted : Prop
  frizzledBinding : Prop
  lrpCoreceptorBinding : Prop
  ternaryComplexFormation : Prop
  signalInitiation : Prop

structure LigandReceptorBindingEvidence {W : WntSignalPathway} {S : WntSignalPathway}
    (L : LigandReceptorBindingPackage S) where
  wntLigandSecretedClosed : L.wntLigandSecreted
  frizzledBindingClosed : L.frizzledBinding
  lrpCoreceptorBindingClosed : L.lrpCoreceptorBinding
  ternaryComplexFormationClosed : L.ternaryComplexFormation
  signalInitiationClosed : L.signalInitiation

def LigandReceptorBindingClosed {W : WntSignalPathway} {S : WntSignalPathway}
    (L : LigandReceptorBindingPackage S) : Prop :=
  L.wntLigandSecreted ∧ L.frizzledBinding ∧ L.lrpCoreceptorBinding ∧
  L.ternaryComplexFormation ∧ L.signalInitiation

theorem ligand_receptor_binding_closed_from_evidence
    {W : WntSignalPathway} {S : WntSignalPathway}
    (L : LigandReceptorBindingPackage S) (E : LigandReceptorBindingEvidence L) :
    LigandReceptorBindingClosed L := by
  exact And.intro E.wntLigandSecretedClosed
    (And.intro E.frizzledBindingClosed
      (And.intro E.lrpCoreceptorBindingClosed
        (And.intro E.ternaryComplexFormationClosed E.signalInitiationClosed)))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse