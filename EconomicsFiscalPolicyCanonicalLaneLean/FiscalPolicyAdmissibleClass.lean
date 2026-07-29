import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

structure FiscalAdmittedObject where
  economy : Type
  equilibrium : Prop
  fiscalPolicy : Prop
  welfare : Prop
  conclusion : equilibrium

structure AdmissibleClass where
  object : FiscalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse