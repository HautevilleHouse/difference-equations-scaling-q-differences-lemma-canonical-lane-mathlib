import DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean.ScalingClosure

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure ScalingLimitEquationPackage where
  differenceOperator : Prop
  scalingFunction : Prop
  limitEquationValid : Prop
  consistencyCondition : Prop

structure ScalingLimitEquationEvidence (S : ScalingLimitEquationPackage) where
  differenceOperatorClosed : S.differenceOperator
  scalingFunctionClosed : S.scalingFunction
  limitEquationValidClosed : S.limitEquationValid
  consistencyConditionClosed : S.consistencyCondition

def ScalingLimitEquationClosed (S : ScalingLimitEquationPackage) : Prop :=
  S.differenceOperator ∧ S.scalingFunction ∧ S.limitEquationValid ∧ S.consistencyCondition

theorem scaling_limit_equation_closed_from_evidence (S : ScalingLimitEquationPackage)
    (E : ScalingLimitEquationEvidence S) : ScalingLimitEquationClosed S := by
  exact And.intro E.differenceOperatorClosed (And.intro E.scalingFunctionClosed (And.intro E.limitEquationValidClosed E.consistencyConditionClosed))

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse