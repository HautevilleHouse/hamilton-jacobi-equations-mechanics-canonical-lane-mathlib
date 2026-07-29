import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiMechanicsCanonicalLaneLean

structure AdmissibleClass where
  object : HamiltonJacobiAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HamiltonJacobiWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HamiltonJacobiMechanicsCanonicalLaneLean
end HautevilleHouse
