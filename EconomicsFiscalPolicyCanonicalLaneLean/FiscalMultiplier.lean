import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure FiscalMultiplierPackage where
  marginalPropensityToConsume : Prop
  multiplierFormula : Prop
  governmentSpendingMultiplier : Prop
  taxMultiplier : Prop
  balancedBudgetMultiplier : Prop

structure FiscalMultiplierEvidence (M : FiscalMultiplierPackage) where
  marginalPropensityToConsumeClosed : M.marginalPropensityToConsume
  multiplierFormulaClosed : M.multiplierFormula
  governmentSpendingMultiplierClosed : M.governmentSpendingMultiplier
  taxMultiplierClosed : M.taxMultiplier
  balancedBudgetMultiplierClosed : M.balancedBudgetMultiplier

def FiscalMultiplierClosed (M : FiscalMultiplierPackage) : Prop :=
  M.marginalPropensityToConsume ∧ M.multiplierFormula ∧ M.governmentSpendingMultiplier ∧ M.taxMultiplier ∧ M.balancedBudgetMultiplier

theorem fiscal_multiplier_closed_from_evidence (M : FiscalMultiplierPackage) (E : FiscalMultiplierEvidence M) :
    FiscalMultiplierClosed M := by
  exact And.intro E.marginalPropensityToConsumeClosed
    (And.intro E.multiplierFormulaClosed
      (And.intro E.governmentSpendingMultiplierClosed
        (And.intro E.taxMultiplierClosed E.balancedBudgetMultiplierClosed)))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse
