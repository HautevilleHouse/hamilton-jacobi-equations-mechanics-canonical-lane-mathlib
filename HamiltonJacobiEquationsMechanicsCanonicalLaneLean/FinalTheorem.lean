import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HamiltonJacobiEquationsMechanicsCanonicalLaneLean.HamiltonJacobiPDEPackage

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

def ConstrainedHamiltonJacobiClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hamilton_jacobi_endgame (A : AdmissibleClass) :
    ConstrainedHamiltonJacobiClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse
