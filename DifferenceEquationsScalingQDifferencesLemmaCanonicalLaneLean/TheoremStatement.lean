import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure ScalingQDifferencesAdmittedObject where
  qDifferenceRing : Type
  scalingFactor : qDifferenceRing → qDifferenceRing
  qDifferenceEquation : Prop
  qDifferencesLemmaStatement : Prop
  closureCondition : Prop
  conclusion : closureCondition

def ScalingQDifferencesWitnessClosed (O : ScalingQDifferencesAdmittedObject) : Prop :=
  O.closureCondition

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse
