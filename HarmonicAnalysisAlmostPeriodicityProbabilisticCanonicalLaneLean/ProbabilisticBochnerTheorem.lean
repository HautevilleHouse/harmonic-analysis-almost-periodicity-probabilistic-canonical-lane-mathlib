import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure ProbabilisticBochnerContext where
  probabilitySpace : Type u
  sigmaAlgebra : Set (Set (probabilitySpace))
  measure : (Set (probabilitySpace)) → ℝ
  integrableFunction : (probabilitySpace → ℝ) → Prop
  bochnerIntegralExistence : Prop

structure ProbabilisticBochnerEvidence (P : ProbabilisticBochnerContext) where
  integrableFunctionClosed : P.integrableFunction
  bochnerIntegralExistenceClosed : P.bochnerIntegralExistence

def ProbabilisticBochnerClosed (P : ProbabilisticBochnerContext) : Prop :=
  P.integrableFunction ∧ P.bochnerIntegralExistence

theorem probabilistic_bochner_closed_from_evidence (P : ProbabilisticBochnerContext)
    (E : ProbabilisticBochnerEvidence P) : ProbabilisticBochnerClosed P := by
  exact And.intro E.integrableFunctionClosed E.bochnerIntegralExistenceClosed

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse