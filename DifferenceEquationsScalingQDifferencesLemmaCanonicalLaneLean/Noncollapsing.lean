import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure NoncollapsingPackage (G : QDifferenceEquationsPackage) where
  scalingBound : Prop
  solutionBounded : Prop
  limitNondegenerate : Prop

def NoncollapsingClosed (G : QDifferenceEquationsPackage) (N : NoncollapsingPackage G) : Prop :=
  N.scalingBound ∧ N.solutionBounded ∧ N.limitNondegenerate

theorem noncollapsing_closed_from_evidence (G : QDifferenceEquationsPackage) (N : NoncollapsingPackage G) (h1 : N.scalingBound) (h2 : N.solutionBounded) (h3 : N.limitNondegenerate) : NoncollapsingClosed G N := by
  exact And.intro h1 (And.intro h2 h3)

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse
