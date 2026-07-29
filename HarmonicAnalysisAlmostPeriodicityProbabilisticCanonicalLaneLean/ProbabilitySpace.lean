import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure ProbabilitySpace where
  Ω : Type
  ℱ : Set (Set Ω)
  μ : Set Ω → ℝ
  probabilityMeasure : Prop
  probabilityMeasureTerm : probabilityMeasure
  sigmaAlgebra : Prop
  sigmaAlgebraTerm : sigmaAlgebra

def probabilitySpaceClosure (p : ProbabilitySpace) : Prop :=
  p.probabilityMeasure ∧ p.sigmaAlgebra

theorem probabilitySpaceClosureFromEvidence (p : ProbabilitySpace) : probabilitySpaceClosure p :=
  And.intro p.probabilityMeasureTerm p.sigmaAlgebraTerm

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse
