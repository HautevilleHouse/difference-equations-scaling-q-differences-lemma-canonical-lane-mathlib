import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  QDifferenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse