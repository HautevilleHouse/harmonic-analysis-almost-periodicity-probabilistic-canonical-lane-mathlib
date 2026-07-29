import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure BochnerFejérKernel where
  indexSet : Type u
  filter : (indexSet → Prop) → Prop
  kernelFunction : indexSet → (ℝ → ℝ)
  approximationProperty : Prop

structure BochnerFejérEvidence (B : BochnerFejérKernel) where
  approximationPropertyClosed : B.approximationProperty

def BochnerFejérClosed (B : BochnerFejérKernel) : Prop :=
  B.approximationProperty

theorem bochner_fejér_closed_from_evidence (B : BochnerFejérKernel)
    (E : BochnerFejérEvidence B) : BochnerFejérClosed B := by
  exact E.approximationPropertyClosed

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse