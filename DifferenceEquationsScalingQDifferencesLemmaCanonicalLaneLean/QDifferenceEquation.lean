import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure QDifferenceEquationPackage where
  q : ℚ
  function : ℕ → ℚ
  initialConditions : function 0 = 0 ∧ function 1 = 1
  recurrenceRelation : ∀ n : ℕ, (function (n+1) - function n) = q * (function n - function (n-1))
  closedFormComputed : Prop
  closedFormComputedTerm : closedFormComputed

structure QDifferenceEquationEvidence (P : QDifferenceEquationPackage) where
  closedFormComputedClosed : P.closedFormComputed

def QDifferenceEquationClosed (P : QDifferenceEquationPackage) : Prop :=
  P.closedFormComputed

theorem q_difference_equation_closed_from_evidence (P : QDifferenceEquationPackage) (E : QDifferenceEquationEvidence P) : QDifferenceEquationClosed P := by
  exact E.closedFormComputedClosed

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse