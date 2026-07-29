import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiMechanicsCanonicalLaneLean

structure HamiltonJacobiSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HamiltonJacobiAdmittedObject where
  space : HamiltonJacobiSpace
  hamiltonJacobiEquationSatisfied : Prop
  hamiltonJacobiWitness : Prop
  conclusion : hamiltonJacobiWitness

def HamiltonJacobiWitnessClosed (O : HamiltonJacobiAdmittedObject) : Prop :=
  O.hamiltonJacobiWitness

end HamiltonJacobiMechanicsCanonicalLaneLean
end HautevilleHouse
