import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean.AlmostPeriodicProbabilitySpace

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded ∨ A.gateWitness

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  Or.inr A.gateWitness

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse