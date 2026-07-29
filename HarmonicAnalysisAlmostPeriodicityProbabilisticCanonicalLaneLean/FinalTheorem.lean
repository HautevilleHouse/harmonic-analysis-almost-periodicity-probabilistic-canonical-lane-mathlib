import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

def ConstrainedHarmonicAnalysisAlmostPeriodicityProbabilisticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_harmonic_analysis_almost_periodicity_probabilistic_endgame (A : AdmissibleClass) : ConstrainedHarmonicAnalysisAlmostPeriodicityProbabilisticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse