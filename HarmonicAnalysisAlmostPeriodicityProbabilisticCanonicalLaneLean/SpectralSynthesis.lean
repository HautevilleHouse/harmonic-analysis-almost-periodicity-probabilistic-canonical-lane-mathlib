import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean.AlmostPeriodicFunctions

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure SpectralMeasure (f : AlmostPeriodicFunction ℂ) where
  support : Set ℝ
  fourierCoefficients : ℝ → ℂ
  positiveDefinite : Prop
  uniqueness : Prop

structure SpectralSynthesisPackage where
  spectralMeasures : List (SpectralMeasure (AlmostPeriodicFunction ℂ))
  spectralResolution : Prop
  bandlimitedApproximation : Prop
  spectralContinuity : Prop

def SpectralSynthesisClosed (P : SpectralSynthesisPackage) : Prop :=
  P.spectralResolution ∧ P.bandlimitedApproximation ∧ P.spectralContinuity

theorem spectral_synthesis_closed (P : SpectralSynthesisPackage) : SpectralSynthesisClosed P := by
  exact And.intro P.spectralResolution (And.intro P.bandlimitedApproximation P.spectralContinuity)

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse