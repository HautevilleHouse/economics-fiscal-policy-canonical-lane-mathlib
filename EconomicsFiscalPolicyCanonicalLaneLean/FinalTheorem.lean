import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

def ConstrainedFiscalPolicyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fiscal_policy_endgame (A : AdmissibleClass) :
    ConstrainedFiscalPolicyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse
