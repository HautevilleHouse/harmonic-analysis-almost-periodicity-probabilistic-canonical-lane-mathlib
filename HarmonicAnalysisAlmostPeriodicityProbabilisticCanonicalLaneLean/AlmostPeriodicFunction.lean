import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure AlmostPeriodicFunction (α : Type u) [TopologicalSpace α] [AddCommMonoid α] where
  carrier : α → ℂ
  bounded : Prop
  relativelyCompactOrbit : Prop
  approxByTrigonometric : Prop

structure AlmostPeriodicEvidence (f : AlmostPeriodicFunction α) where
  boundedClosed : f.bounded
  relativelyCompactOrbitClosed : f.relativelyCompactOrbit
  approxByTrigonometricClosed : f.approxByTrigonometric

def AlmostPeriodicClosed (f : AlmostPeriodicFunction α) : Prop :=
  f.bounded ∧ f.relativelyCompactOrbit ∧ f.approxByTrigonometric

theorem almost_periodic_closed_from_evidence (f : AlmostPeriodicFunction α)
    (E : AlmostPeriodicEvidence f) : AlmostPeriodicClosed f := by
  exact And.intro E.boundedClosed (And.intro E.relativelyCompactOrbitClosed E.approxByTrigonometricClosed)

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse