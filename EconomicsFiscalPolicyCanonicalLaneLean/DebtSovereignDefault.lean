import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure SovereignDebtPackage where
  faceValue : ℝ
  recoveryRate : ℝ
  defaultProbability : ℝ
  riskFreeRate : ℝ

structure DebtPricingEvidence (D : SovereignDebtPackage) where
  faceValuePositive : D.faceValue > 0
  recoveryRateNonnegative : D.recoveryRate ≥ 0
  defaultProbabilityBetween : 0 ≤ D.defaultProbability ∧ D.defaultProbability ≤ 1
  riskFreeRateNonnegative : D.riskFreeRate ≥ 0

def DebtPricingClosed (D : SovereignDebtPackage) : Prop :=
  D.faceValue > 0 ∧ D.recoveryRate ≥ 0 ∧ (0 ≤ D.defaultProbability ∧ D.defaultProbability ≤ 1) ∧ D.riskFreeRate ≥ 0

theorem debt_pricing_closed_from_evidence (D : SovereignDebtPackage) (E : DebtPricingEvidence D) : DebtPricingClosed D := by
  exact And.intro E.faceValuePositive (And.intro E.recoveryRateNonnegative (And.intro E.defaultProbabilityBetween E.riskFreeRateNonnegative))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse