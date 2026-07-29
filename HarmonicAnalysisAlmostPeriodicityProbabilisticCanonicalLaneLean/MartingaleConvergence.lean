import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean

structure MartingaleConvergence where
  filtration : Type
  martingaleFamily : Type
  almostSureConvergence : Prop
  LpConvergence : Prop
  almostSureConvergenceTerm : almostSureConvergence
  LpConvergenceTerm : LpConvergence

structure MartingaleConvergenceEvidence (M : MartingaleConvergence) where
  almostSureConvergenceClosed : M.almostSureConvergence
  LpConvergenceClosed : M.LpConvergence

def MartingaleConvergenceClosed (M : MartingaleConvergence) : Prop :=
  M.almostSureConvergence ∧ M.LpConvergence

theorem martingale_convergence_closed_from_evidence (M : MartingaleConvergence) (E : MartingaleConvergenceEvidence M) : MartingaleConvergenceClosed M := by
  exact And.intro E.almostSureConvergenceClosed E.LpConvergenceClosed

end HarmonicAnalysisAlmostPeriodicityProbabilisticCanonicalLaneLean
end HautevilleHouse