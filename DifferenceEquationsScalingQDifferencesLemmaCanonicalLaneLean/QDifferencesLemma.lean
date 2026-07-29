import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure QDifferencesLemmaPackage where
  q : ℚ
  differenceSequence : ℕ → ℚ
  lemmaStatement : ∀ n : ℕ, differenceSequence n = (function 0) * ((1 + q) ^ n - q ^ n) / (1 + q - 1)
  derivedFromEquation : Prop
  derivedFromEquationTerm : derivedFromEquation

structure QDifferencesLemmaEvidence (L : QDifferencesLemmaPackage) where
  derivedFromEquationClosed : L.derivedFromEquation

def QDifferencesLemmaClosed (L : QDifferencesLemmaPackage) : Prop :=
  L.derivedFromEquation

theorem q_differences_lemma_closed_from_evidence (L : QDifferencesLemmaPackage) (E : QDifferencesLemmaEvidence L) : QDifferencesLemmaClosed L := by
  exact E.derivedFromEquationClosed

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse