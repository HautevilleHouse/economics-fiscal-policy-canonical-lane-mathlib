import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure UtilityTheoryPackage where
  preferenceRelation : Type u
  utilityFunction : Type v
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  nonzeroUtilityWeights : Prop
  completenessTerm : completeness
  transitivityTerm : transitivity
  continuityTerm : continuity
  nonzeroUtilityWeightsTerm : nonzeroUtilityWeights

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  nonzeroUtilityWeightsClosed : U.nonzeroUtilityWeights

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.nonzeroUtilityWeights

theorem utility_theory_closed_from_evidence (U : UtilityTheoryPackage)
    (E : UtilityTheoryEvidence U) : UtilityTheoryClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed
    (And.intro E.continuityClosed E.nonzeroUtilityWeightsClosed))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse