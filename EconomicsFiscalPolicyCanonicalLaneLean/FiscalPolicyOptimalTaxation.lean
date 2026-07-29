import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsFiscalPolicyCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure FiscalPolicyPackage where
  governmentBudgetConstraint : Prop
  taxSystem : Type u
  publicExpenditure : Type v
  fiscalMultiplier : ℝ
  debtDynamics : Prop

structure OptimalTaxationPackage where
  fiscalPolicy : FiscalPolicyPackage
  socialWelfareFunction : Prop
  taxDistortion : Prop
  ramseyRule : Prop
  optimalTaxRate : ℝ

structure OptimalTaxationEvidence (T : OptimalTaxationPackage) where
  socialWelfareFunctionClosed : T.socialWelfareFunction
  taxDistortionClosed : T.taxDistortion
  ramseyRuleClosed : T.ramseyRule

def OptimalTaxationClosed (T : OptimalTaxationPackage) : Prop :=
  T.socialWelfareFunction ∧ T.taxDistortion ∧ T.ramseyRule

theorem optimal_taxation_closed_from_evidence (T : OptimalTaxationPackage) (E : OptimalTaxationEvidence T) : OptimalTaxationClosed T := by
  exact And.intro E.socialWelfareFunctionClosed (And.intro E.taxDistortionClosed E.ramseyRuleClosed)

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse