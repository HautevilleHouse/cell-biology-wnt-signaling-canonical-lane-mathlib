import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure WntSignalPathway where
  ligand : Type u
  receptor : Type v
  frizzled : Type w
  lrpCoreceptor : Type x
  dishevelled : Type y
  betaCatenin : Type z
  tcfLefTranscription : Type t
  signalOn : Prop
  ligandBound : Prop
  receptorActivated : Prop
  dishevelledRecruited : Prop
  betaCateninStabilized : Prop
  targetGeneExpression : Prop
  ligandBoundTerm : ligandBound
  receptorActivatedTerm : receptorActivated
  dishevelledRecruitedTerm : dishevelledRecruited
  betaCateninStabilizedTerm : betaCateninStabilized
  targetGeneExpressionTerm : targetGeneExpression

structure WntSignalPathwayEvidence (W : WntSignalPathway) where
  signalOnClosed : W.signalOn
  ligandBoundClosed : W.ligandBound
  receptorActivatedClosed : W.receptorActivated
  dishevelledRecruitedClosed : W.dishevelledRecruited
  betaCateninStabilizedClosed : W.betaCateninStabilized
  targetGeneExpressionClosed : W.targetGeneExpression

def WntSignalPathwayClosed (W : WntSignalPathway) : Prop :=
  W.signalOn ∧ W.ligandBound ∧ W.receptorActivated ∧ W.dishevelledRecruited ∧
  W.betaCateninStabilized ∧ W.targetGeneExpression

theorem wnt_signal_pathway_closed_from_evidence (W : WntSignalPathway) (E : WntSignalPathwayEvidence W) :
    WntSignalPathwayClosed W := by
  exact And.intro E.signalOnClosed
    (And.intro E.ligandBoundClosed
      (And.intro E.receptorActivatedClosed
        (And.intro E.dishevelledRecruitedClosed
          (And.intro E.betaCateninStabilizedClosed E.targetGeneExpressionClosed))))

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse