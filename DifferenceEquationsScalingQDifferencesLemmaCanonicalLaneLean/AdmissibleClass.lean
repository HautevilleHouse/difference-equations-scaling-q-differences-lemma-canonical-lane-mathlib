import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure QDifferenceAdmittedObject where
  q : ℚ
  function : ℕ → ℚ
  qDifferenceEquation : ∀ n : ℕ, (function (n+1) - function n) = q * (function n - function (n-1))
  conclusion : ∀ n : ℕ, function n = (function 0) * ((1 + q) ^ n - q ^ n) / (1 + q - 1)

structure AdmissibleClass where
  object : QDifferenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  QDifferenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse