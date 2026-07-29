import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure BochnerIntegral (α : Type u) [TopologicalSpace α] [NormedAddCommGroup α] [BorelSpace α] where
  integrableFunction : α → ℂ
  integralDefined : Prop
  almostPeriodicityPreserved : Prop

structure BochnerIntegralEvidence (I : BochnerIntegral α) where
  integralDefinedClosed : I.integralDefined
  almostPeriodicityPreservedClosed : I.almostPeriodicityPreserved

def BochnerIntegralClosed (I : BochnerIntegral α) : Prop :=
  I.integralDefined ∧ I.almostPeriodicityPreserved

theorem bochner_integral_closed_from_evidence (I : BochnerIntegral α)
    (E : BochnerIntegralEvidence I) : BochnerIntegralClosed I := by
  exact And.intro E.integralDefinedClosed E.almostPeriodicityPreservedClosed

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse