import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure QDifferenceEquationsPackage where
  fieldOfDefinition : Type
  qParameter : ℚ
  equationSystem : Type
  scalingLemmaStatement : Prop
  solutionSpaceDimension : ℕ

def QDifferenceEquationsClosed (G : QDifferenceEquationsPackage) : Prop :=
  G.scalingLemmaStatement ∧ G.solutionSpaceDimension ≥ 1

theorem q_difference_equations_closed_from_evidence (G : QDifferenceEquationsPackage) (h : G.scalingLemmaStatement) (hdim : G.solutionSpaceDimension ≥ 1) : QDifferenceEquationsClosed G := by
  exact And.intro h hdim

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse
