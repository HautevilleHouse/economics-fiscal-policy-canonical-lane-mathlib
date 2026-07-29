import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure FiscalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FiscalAdmittedObject where
  space : FiscalSpace
  equilibriumExistence : Prop
  paretoOptimality : Prop
  firstWelfareTheorem : Prop
  conclusion : firstWelfareTheorem

def FiscalWitnessClosed (O : FiscalAdmittedObject) : Prop :=
  O.firstWelfareTheorem

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse