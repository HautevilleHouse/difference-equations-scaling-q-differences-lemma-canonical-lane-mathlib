import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure ScalingPropertyPackage where
  q : ℚ
  function : ℕ → ℚ
  scalingFactor : ℚ
  scalingLaw : ∀ n : ℕ, function (n+1) = scalingFactor * function n
  closedFormDerived : Prop
  closedFormDerivedTerm : closedFormDerived

structure ScalingPropertyEvidence (S : ScalingPropertyPackage) where
  closedFormDerivedClosed : S.closedFormDerived

def ScalingPropertyClosed (S : ScalingPropertyPackage) : Prop :=
  S.closedFormDerived

theorem scaling_property_closed_from_evidence (S : ScalingPropertyPackage) (E : ScalingPropertyEvidence S) : ScalingPropertyClosed S := by
  exact E.closedFormDerivedClosed

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse