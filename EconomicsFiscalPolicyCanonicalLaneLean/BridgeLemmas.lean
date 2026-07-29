import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsFiscalPolicyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FiscalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsFiscalPolicyCanonicalLaneLean
end HautevilleHouse