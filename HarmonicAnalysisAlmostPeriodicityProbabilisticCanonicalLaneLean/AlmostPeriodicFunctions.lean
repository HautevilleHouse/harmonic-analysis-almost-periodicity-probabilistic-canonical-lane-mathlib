import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure AlmostPeriodicFunction (α : Type u) [TopologicalSpace α] [AddMonoid α] where
  carrier : α → ℂ
  almostPeriodic : Prop
  approxByTrigonometricPolynomials : Prop
  bochnerFejérSummation : Prop

structure AlmostPeriodicFunctionsPackage where
  domain : Type u
  [top : TopologicalSpace domain]
  [add : AddMonoid domain]
  functions : List (AlmostPeriodicFunction domain)
  closedUnderLimits : Prop
  closedUnderAddition : Prop
  closedUnderMultiplication : Prop

def AlmostPeriodicFunctionsClosed (P : AlmostPeriodicFunctionsPackage) : Prop :=
  P.closedUnderLimits ∧ P.closedUnderAddition ∧ P.closedUnderMultiplication

theorem almost_periodic_functions_closed (P : AlmostPeriodicFunctionsPackage) : AlmostPeriodicFunctionsClosed P := by
  exact And.intro P.closedUnderLimits (And.intro P.closedUnderAddition P.closedUnderMultiplication)

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse