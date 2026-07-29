import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean.MeanErgodicBridge

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

def ConstrainedAlmostPeriodicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_almost_periodic_endgame (A : AdmissibleClass) :
    ConstrainedAlmostPeriodicClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse