import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure ProbabilisticBochnerIntegral where
  measureSpace : Type
  sigmaAlgebra : Type
  measure : Type
  integrableFunctions : Type
  integralMap : integrableFunctions → ℝ
  linearity : Prop
  dominatedConvergence : Prop
  linearityTerm : linearity
  dominatedConvergenceTerm : dominatedConvergence

structure ProbabilisticBochnerIntegralEvidence (I : ProbabilisticBochnerIntegral) where
  linearityClosed : I.linearity
  dominatedConvergenceClosed : I.dominatedConvergence

def ProbabilisticBochnerIntegralClosed (I : ProbabilisticBochnerIntegral) : Prop :=
  I.linearity ∧ I.dominatedConvergence

theorem probabilistic_bochner_integral_closed_from_evidence (I : ProbabilisticBochnerIntegral) (E : ProbabilisticBochnerIntegralEvidence I) : ProbabilisticBochnerIntegralClosed I := by
  exact And.intro E.linearityClosed E.dominatedConvergenceClosed

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse