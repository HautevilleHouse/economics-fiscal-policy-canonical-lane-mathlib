import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : Type v
  endowment : Type w
  preferences : Type x
  equilibriumPrice : Prop
  equilibriumAllocation : Prop
  paretoOptimal : Prop
  equilibriumPriceTerm : equilibriumPrice
  equilibriumAllocationTerm : equilibriumAllocation
  paretoOptimalTerm : paretoOptimal

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  equilibriumPriceClosed : A.equilibriumPrice
  equilibriumAllocationClosed : A.equilibriumAllocation
  paretoOptimalClosed : A.paretoOptimal

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.equilibriumPrice ∧ A.equilibriumAllocation ∧ A.paretoOptimal

theorem arrow_debreu_equilibrium_closed_from_evidence (A : ArrowDebreuEquilibriumPackage)
    (E : ArrowDebreuEquilibriumEvidence A) : ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.equilibriumPriceClosed (And.intro E.equilibriumAllocationClosed E.paretoOptimalClosed)

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse