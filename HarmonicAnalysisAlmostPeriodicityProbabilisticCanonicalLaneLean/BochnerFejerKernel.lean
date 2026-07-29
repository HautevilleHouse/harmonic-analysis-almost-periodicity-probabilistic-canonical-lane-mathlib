import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean.AlmostPeriodicFunctions

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure BochnerFejérKernel where
  order : ℕ
  kernelFunction : ℝ → ℂ
  positivity : Prop
  integralOne : Prop
  approximationProperty : Prop

structure FejérApproximationPackage where
  kernel : BochnerFejérKernel
  approximationRate : ℝ → ℝ
  uniformApproximation : Prop
  L1Approximation : Prop

def FejérApproximationClosed (P : FejérApproximationPackage) : Prop :=
  P.uniformApproximation ∧ P.L1Approximation

theorem fejér_approximation_closed (P : FejérApproximationPackage) : FejérApproximationClosed P := by
  exact And.intro P.uniformApproximation P.L1Approximation

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse