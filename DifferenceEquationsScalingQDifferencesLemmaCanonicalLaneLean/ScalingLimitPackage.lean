import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure ScalingLimitPackage (G : QDifferenceEquationsPackage) where
  scalingFactor : ℚ
  qDifferenceEquation : Prop
  limitExistence : Prop
  limitValue : Type
  limitTopology : TopologicalSpace limitValue
  limitUniqueness : Prop

structure ScalingLimitEvidence (G : QDifferenceEquationsPackage) (S : ScalingLimitPackage G) where
  qDifferenceEquationClosed : S.qDifferenceEquation
  limitExistenceClosed : S.limitExistence
  limitUniquenessClosed : S.limitUniqueness

def ScalingLimitClosed (G : QDifferenceEquationsPackage) (S : ScalingLimitPackage G) : Prop :=
  S.qDifferenceEquation ∧ S.limitExistence ∧ S.limitUniqueness

theorem scaling_limit_closed_from_evidence (G : QDifferenceEquationsPackage) (S : ScalingLimitPackage G) (E : ScalingLimitEvidence G S) :
    ScalingLimitClosed G S := by
  exact And.intro E.qDifferenceEquationClosed (And.intro E.limitExistenceClosed E.limitUniquenessClosed)

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse
