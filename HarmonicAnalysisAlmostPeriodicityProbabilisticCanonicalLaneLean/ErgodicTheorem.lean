import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure ErgodicTheorem where
  dynamicalSystem : Type
  invariantMeasure : Type
  almostPeriodicFlow : Prop
  meanErgodic : Prop
  pointwiseErgodic : Prop
  almostPeriodicFlowTerm : almostPeriodicFlow
  meanErgodicTerm : meanErgodic
  pointwiseErgodicTerm : pointwiseErgodic

structure ErgodicTheoremEvidence (E : ErgodicTheorem) where
  almostPeriodicFlowClosed : E.almostPeriodicFlow
  meanErgodicClosed : E.meanErgodic
  pointwiseErgodicClosed : E.pointwiseErgodic

def ErgodicTheoremClosed (E : ErgodicTheorem) : Prop :=
  E.almostPeriodicFlow ∧ E.meanErgodic ∧ E.pointwiseErgodic

theorem ergodic_theorem_closed_from_evidence (E : ErgodicTheorem) (Ev : ErgodicTheoremEvidence E) : ErgodicTheoremClosed E := by
  exact And.intro Ev.almostPeriodicFlowClosed (And.intro Ev.meanErgodicClosed Ev.pointwiseErgodicClosed)

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse