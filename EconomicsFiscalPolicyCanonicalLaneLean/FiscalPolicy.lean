import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure FiscalPolicyPackage where
  governmentBudget : Prop
  taxRevenue : Prop
  governmentSpending : Prop
  fiscalDeficit : Prop
  publicDebt : Prop

structure FiscalPolicyEvidence (F : FiscalPolicyPackage) where
  governmentBudgetClosed : F.governmentBudget
  taxRevenueClosed : F.taxRevenue
  governmentSpendingClosed : F.governmentSpending
  fiscalDeficitClosed : F.fiscalDeficit
  publicDebtClosed : F.publicDebt

def FiscalPolicyClosed (F : FiscalPolicyPackage) : Prop :=
  F.governmentBudget ∧ F.taxRevenue ∧ F.governmentSpending ∧ F.fiscalDeficit ∧ F.publicDebt

theorem fiscal_policy_closed_from_evidence (F : FiscalPolicyPackage) (E : FiscalPolicyEvidence F) :
    FiscalPolicyClosed F := by
  exact And.intro E.governmentBudgetClosed
    (And.intro E.taxRevenueClosed
      (And.intro E.governmentSpendingClosed
        (And.intro E.fiscalDeficitClosed E.publicDebtClosed)))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse
