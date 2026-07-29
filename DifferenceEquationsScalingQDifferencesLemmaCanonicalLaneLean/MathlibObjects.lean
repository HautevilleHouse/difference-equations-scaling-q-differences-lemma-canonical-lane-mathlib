import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure QDifferenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure QAdmittedObject where
  space : QDifferenceSpace
  scalingFactor : ℚ
  qDifferenceEquation : Prop
  scalingLimitExists : Prop
  scalingLimitValue : Type
  limitTopology : TopologicalSpace scalingLimitValue
  qIsScaledLimit : Prop
  conclusion : qIsScaledLimit

structure QEndgameState where
  object : QAdmittedObject

def QWitnessClosed (O : QAdmittedObject) : Prop :=
  O.qIsScaledLimit

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse
