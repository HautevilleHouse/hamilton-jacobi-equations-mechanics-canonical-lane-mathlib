import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HJBWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse