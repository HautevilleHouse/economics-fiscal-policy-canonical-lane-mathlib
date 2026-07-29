import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure UtilityMaximizationPackage where
  consumptionSet : Type u
  preferenceRelation : consumptionSet → consumptionSet → Prop
  utilityFunction : consumptionSet → ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  utilityRepresentsPreference : Prop

structure UtilityMaximizationEvidence (U : UtilityMaximizationPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  utilityRepresentsPreferenceClosed : U.utilityRepresentsPreference

def UtilityMaximizationClosed (U : UtilityMaximizationPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.utilityRepresentsPreference

theorem utility_maximization_closed_from_evidence (U : UtilityMaximizationPackage) (E : UtilityMaximizationEvidence U) : UtilityMaximizationClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed (And.intro E.continuityClosed E.utilityRepresentsPreferenceClosed))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse