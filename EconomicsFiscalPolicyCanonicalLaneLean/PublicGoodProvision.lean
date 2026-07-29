import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure PublicGoodProvisionPackage where
  totalBudget : ℝ
  publicGoodQuantity : ℝ
  costFunction : ℝ
  efficiencyGap : ℝ

structure PublicGoodProvisionEvidence (P : PublicGoodProvisionPackage) where
  totalBudgetNonnegative : P.totalBudget ≥ 0
  publicGoodQuantityNonnegative : P.publicGoodQuantity ≥ 0
  costFunctionPositive : P.costFunction > 0
  efficiencyGapNonnegative : P.efficiencyGap ≥ 0

def PublicGoodProvisionClosed (P : PublicGoodProvisionPackage) : Prop :=
  P.totalBudget ≥ 0 ∧ P.publicGoodQuantity ≥ 0 ∧ P.costFunction > 0 ∧ P.efficiencyGap ≥ 0

theorem public_good_provision_closed_from_evidence (P : PublicGoodProvisionPackage) (E : PublicGoodProvisionEvidence P) : PublicGoodProvisionClosed P := by
  exact And.intro E.totalBudgetNonnegative (And.intro E.publicGoodQuantityNonnegative (And.intro E.costFunctionPositive E.efficiencyGapNonnegative))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse