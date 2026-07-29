import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure GaussianMeasure (α : Type u) [TopologicalSpace α] [AddCommGroup α] where
  mean : α → ℝ
  covariance : α → α → ℝ
  finiteDimensionalProjections : Prop
  almostPeriodicInLaw : Prop

structure GaussianMeasureEvidence (G : GaussianMeasure α) where
  finiteDimensionalProjectionsClosed : G.finiteDimensionalProjections
  almostPeriodicInLawClosed : G.almostPeriodicInLaw

def GaussianMeasureClosed (G : GaussianMeasure α) : Prop :=
  G.finiteDimensionalProjections ∧ G.almostPeriodicInLaw

theorem gaussian_measure_closed_from_evidence (G : GaussianMeasure α)
    (E : GaussianMeasureEvidence G) : GaussianMeasureClosed G := by
  exact And.intro E.finiteDimensionalProjectionsClosed E.almostPeriodicInLawClosed

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse