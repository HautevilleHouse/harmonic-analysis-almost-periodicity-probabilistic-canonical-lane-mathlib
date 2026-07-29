import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure AdmissibleClass where
  object : AlmostPeriodicProbabilisticObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AlmostPeriodicProbabilisticObject where
  functionSpace : AlmostPeriodicFunctionSpace
  integral : ProbabilisticBochnerIntegral
  ergodic : ErgodicTheorem
  martingale : MartingaleConvergence
  stochastic : StochasticCalculus

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlmostPeriodicProbabilisticClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def AlmostPeriodicProbabilisticClosed (O : AlmostPeriodicProbabilisticObject) : Prop :=
  AlmostPeriodicFunctionSpaceClosed O.functionSpace ∧
  ProbabilisticBochnerIntegralClosed O.integral ∧
  ErgodicTheoremClosed O.ergodic ∧
  MartingaleConvergenceClosed O.martingale ∧
  StochasticCalculusClosed O.stochastic

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse