import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure RicardianEquivalencePackage where
  consumerOptimization : Prop
  lumpSumTaxes : Prop
  governmentBudgetConstraint : Prop
  debtNeutrality : Prop
  consumptionUnchanged : Prop

structure RicardianEquivalenceEvidence (R : RicardianEquivalencePackage) where
  consumerOptimizationClosed : R.consumerOptimization
  lumpSumTaxesClosed : R.lumpSumTaxes
  governmentBudgetConstraintClosed : R.governmentBudgetConstraint
  debtNeutralityClosed : R.debtNeutrality
  consumptionUnchangedClosed : R.consumptionUnchanged

def RicardianEquivalenceClosed (R : RicardianEquivalencePackage) : Prop :=
  R.consumerOptimization ∧ R.lumpSumTaxes ∧ R.governmentBudgetConstraint ∧ R.debtNeutrality ∧ R.consumptionUnchanged

theorem ricardian_equivalence_closed_from_evidence (R : RicardianEquivalencePackage) (E : RicardianEquivalenceEvidence R) :
    RicardianEquivalenceClosed R := by
  exact And.intro E.consumerOptimizationClosed
    (And.intro E.lumpSumTaxesClosed
      (And.intro E.governmentBudgetConstraintClosed
        (And.intro E.debtNeutralityClosed E.consumptionUnchangedClosed)))

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse
