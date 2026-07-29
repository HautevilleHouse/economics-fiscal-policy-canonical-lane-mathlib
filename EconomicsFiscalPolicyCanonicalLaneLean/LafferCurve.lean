import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure LafferCurvePackage where
  taxRate : ℝ
  taxRevenue : ℝ
  peakTaxRate : ℝ
  revenueMaximizing : Prop

structure LafferCurveEvidence (L : LafferCurvePackage) where
  taxRateBetween : 0 ≤ L.taxRate ∧ L.taxRate ≤ 1
  taxRevenueNonnegative : L.taxRevenue ≥ 0
  peakTaxRateBetween : 0 ≤ L.peakTaxRate ∧ L.peakTaxRate ≤ 1
  revenueMaximizingClosed : L.revenueMaximizing

def LafferCurveClosed (L : LafferCurvePackage) : Prop :=
  (0 ≤ L.taxRate ∧ L.taxRate ≤ 1) ∧ L.taxRevenue ≥ 0 ∧ (0 ≤ L.peakTaxRate ∧ L.peakTaxRate ≤ 1) ∧ L.revenueMaximizing

theorem laffer_curve_closed_from_evidence (L : LafferCurvePackage) (E : LafferCurveEvidence L) : LafferCurveClosed L := by
  exact And.intro E.taxRateBetween (And.intro E.taxRevenueNonnegative (And.intro E.peakTaxRateBetween E.revenueMaximizingClosed))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse