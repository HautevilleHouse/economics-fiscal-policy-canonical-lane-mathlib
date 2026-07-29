import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure OptimalTaxationPackage where
  socialWelfare : ℝ
  laborSupply : ℝ
  taxRate : ℝ
  ramseyRuleSatisfied : Prop

structure OptimalTaxationEvidence (O : OptimalTaxationPackage) where
  socialWelfarePositive : O.socialWelfare > 0
  laborSupplyNonnegative : O.laborSupply ≥ 0
  taxRateBetween : 0 ≤ O.taxRate ∧ O.taxRate ≤ 1
  ramseyRuleSatisfiedClosed : O.ramseyRuleSatisfied

def OptimalTaxationClosed (O : OptimalTaxationPackage) : Prop :=
  O.socialWelfare > 0 ∧ O.laborSupply ≥ 0 ∧ (0 ≤ O.taxRate ∧ O.taxRate ≤ 1) ∧ O.ramseyRuleSatisfied

theorem optimal_taxation_closed_from_evidence (O : OptimalTaxationPackage) (E : OptimalTaxationEvidence O) : OptimalTaxationClosed O := by
  exact And.intro E.socialWelfarePositive (And.intro E.laborSupplyNonnegative (And.intro E.taxRateBetween E.ramseyRuleSatisfiedClosed))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse