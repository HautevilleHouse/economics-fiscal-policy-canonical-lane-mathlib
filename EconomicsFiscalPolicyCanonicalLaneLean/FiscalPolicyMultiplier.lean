import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure FiscalMultiplierModel where
  governmentSpending : ℝ
  taxMultiplier : ℝ
  outputResponse : ℝ
  multiplierPositive : Prop
  balancedBudgetCondition : Prop

structure FiscalMultiplierEvidence (M : FiscalMultiplierModel) where
  multiplierPositiveClosed : M.multiplierPositive
  balancedBudgetConditionClosed : M.balancedBudgetCondition

def FiscalMultiplierClosed (M : FiscalMultiplierModel) : Prop :=
  M.multiplierPositive ∧ M.balancedBudgetCondition

theorem fiscal_multiplier_closed_from_evidence (M : FiscalMultiplierModel)
    (Ev : FiscalMultiplierEvidence M) : FiscalMultiplierClosed M := by
  exact And.intro Ev.multiplierPositiveClosed Ev.balancedBudgetConditionClosed

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse