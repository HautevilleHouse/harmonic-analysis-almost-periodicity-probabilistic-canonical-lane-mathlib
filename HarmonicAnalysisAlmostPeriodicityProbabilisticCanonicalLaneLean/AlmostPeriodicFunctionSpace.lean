import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure AlmostPeriodicFunctionSpace where
  carrier : Type
  norm : carrier → ℝ
  completeness : Prop
  translationInvariance : Prop
  approximationProperty : Prop
  completenessTerm : completeness
  translationInvarianceTerm : translationInvariance
  approximationPropertyTerm : approximationProperty

structure AlmostPeriodicFunctionSpaceEvidence (X : AlmostPeriodicFunctionSpace) where
  completenessClosed : X.completeness
  translationInvarianceClosed : X.translationInvariance
  approximationPropertyClosed : X.approximationProperty

def AlmostPeriodicFunctionSpaceClosed (X : AlmostPeriodicFunctionSpace) : Prop :=
  X.completeness ∧ X.translationInvariance ∧ X.approximationProperty

theorem almost_periodic_function_space_closed_from_evidence (X : AlmostPeriodicFunctionSpace) (E : AlmostPeriodicFunctionSpaceEvidence X) : AlmostPeriodicFunctionSpaceClosed X := by
  exact And.intro E.completenessClosed (And.intro E.translationInvarianceClosed E.approximationPropertyClosed)

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse