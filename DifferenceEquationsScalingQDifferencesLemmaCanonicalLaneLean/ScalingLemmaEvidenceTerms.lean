import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean

structure ScalingLemmaAnalyticEvidenceTerms (G : QDifferenceEquationsPackage) (S : ScalingLimitPackage G) where
  qDifferenceEquation : S.qDifferenceEquation
  limitExistence : S.limitExistence
  limitUniqueness : S.limitUniqueness
  scalingClosed : ScalingLimitClosed G S

def ScalingLimitPackage.evidenceTerms (G : QDifferenceEquationsPackage) (S : ScalingLimitPackage G) (E : ScalingLimitEvidence G S) : ScalingLemmaAnalyticEvidenceTerms G S :=
  {
    qDifferenceEquation := E.qDifferenceEquationClosed
    limitExistence := E.limitExistenceClosed
    limitUniqueness := E.limitUniquenessClosed
    scalingClosed := scaling_limit_closed_from_evidence G S E
  }

end DifferenceEquationsScalingQDifferencesLemmaCanonicalLaneLean
end HautevilleHouse
