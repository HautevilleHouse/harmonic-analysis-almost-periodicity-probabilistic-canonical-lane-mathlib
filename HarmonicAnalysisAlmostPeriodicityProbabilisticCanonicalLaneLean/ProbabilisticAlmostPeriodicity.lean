import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure ProbabilisticAlmostPeriodicFunction (Ω : Type u) [ProbabilitySpace Ω] where
  randomProcess : Ω → ℂ
  measurePreservingTransform : Prop
  ergodicAveragesConverge : Prop

structure ProbabilisticAlmostPeriodicEvidence (X : ProbabilisticAlmostPeriodicFunction Ω) where
  measurePreservingTransformClosed : X.measurePreservingTransform
  ergodicAveragesConvergeClosed : X.ergodicAveragesConverge

def ProbabilisticAlmostPeriodicClosed (X : ProbabilisticAlmostPeriodicFunction Ω) : Prop :=
  X.measurePreservingTransform ∧ X.ergodicAveragesConverge

theorem probabilistic_almost_periodic_closed_from_evidence (X : ProbabilisticAlmostPeriodicFunction Ω)
    (E : ProbabilisticAlmostPeriodicEvidence X) : ProbabilisticAlmostPeriodicClosed X := by
  exact And.intro E.measurePreservingTransformClosed E.ergodicAveragesConvergeClosed

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse