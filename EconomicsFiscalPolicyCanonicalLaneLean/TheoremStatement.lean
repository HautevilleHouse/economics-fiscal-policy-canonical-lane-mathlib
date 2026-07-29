import EconomicsFiscalPolicyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

def FiscalWitnessClosed (O : FiscalAdmittedObject) : Prop :=
  O.stability

def FiscalPolicyTheoremStatement : Prop :=
  forall (A : AdmissibleClass), ConstrainedFiscalClosure A

theorem fiscal_policy_theorem_statement : FiscalPolicyTheoremStatement := by
  intro A
  exact constrained_fiscal_endgame A

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse