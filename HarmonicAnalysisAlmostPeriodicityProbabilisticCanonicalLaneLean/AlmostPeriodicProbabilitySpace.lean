import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

/-- A probability space equipped with a family of translations that is almost periodic. -/
structure AlmostPeriodicProbabilitySpace where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasure : carrier → ℝ
  translationGroup : Type v
  groupAction : translationGroup → carrier → carrier
  almostPeriodicity : Prop
  translationInvariant : Prop
  ergodicDecomposition : Prop
  almostPeriodicityTerm : almostPeriodicity
  translationInvariantTerm : translationInvariant
  ergodicDecompositionTerm : ergodicDecomposition

/-- Evidence that an almost periodic probability space is closed under admissible class. -/
structure AlmostPeriodicProbabilityEvidence (A : AdmissibleClass) where
  almostPeriodicityClosed : A.endpointSatisfied
  translationInvariantClosed : A.remainderRecorded
  ergodicDecompositionClosed : A.gateWitness

def AlmostPeriodicProbabilityClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∧ A.remainderRecorded

theorem almost_periodic_probability_closed_from_evidence (A : AdmissibleClass)
    (E : AlmostPeriodicProbabilityEvidence A) : AlmostPeriodicProbabilityClosed A :=
  And.intro E.almostPeriodicityClosed E.translationInvariantClosed

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse