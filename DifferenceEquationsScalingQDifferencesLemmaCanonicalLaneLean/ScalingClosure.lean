import DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean.QDifferencesLemma

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure ScalingClosurePackage where
  scalingInvariant : Prop
  closureUnderQ : Prop
  limitReached : Prop

structure ScalingClosureEvidence (S : ScalingClosurePackage) where
  scalingInvariantClosed : S.scalingInvariant
  closureUnderQClosed : S.closureUnderQ
  limitReachedClosed : S.limitReached

def ScalingClosureClosed (S : ScalingClosurePackage) : Prop :=
  S.scalingInvariant ∧ S.closureUnderQ ∧ S.limitReached

theorem scaling_closure_closed_from_evidence (S : ScalingClosurePackage)
    (E : ScalingClosureEvidence S) : ScalingClosureClosed S := by
  exact And.intro E.scalingInvariantClosed (And.intro E.closureUnderQClosed E.limitReachedClosed)

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse