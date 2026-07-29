import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HamiltonJacobiSystemClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.endpointCondition

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse