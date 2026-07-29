import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HamiltonJacobiMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HamiltonJacobiWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end HamiltonJacobiMechanicsCanonicalLaneLean
end HautevilleHouse
