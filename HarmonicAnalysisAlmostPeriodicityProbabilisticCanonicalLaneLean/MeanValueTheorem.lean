import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure MeanValueTheorem where
  meanExists : Prop
  limitOfAverages : Prop
  densityCondition : Prop

structure MeanValueEvidence (M : MeanValueTheorem) where
  meanExistsClosed : M.meanExists
  limitOfAveragesClosed : M.limitOfAverages
  densityConditionClosed : M.densityCondition

def MeanValueClosed (M : MeanValueTheorem) : Prop :=
  M.meanExists ∧ M.limitOfAverages ∧ M.densityCondition

theorem mean_value_closed_from_evidence (M : MeanValueTheorem)
    (E : MeanValueEvidence M) : MeanValueClosed M := by
  exact And.intro E.meanExistsClosed (And.intro E.limitOfAveragesClosed E.densityConditionClosed)

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse