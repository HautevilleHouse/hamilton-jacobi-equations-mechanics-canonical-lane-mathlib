import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure HamiltonJacobiPDEPackage where
  timeDomain : Type u
  stateSpace : Type v
  hamiltonian : stateSpace -> timeDomain -> Real -> Real
  jacobiEquationFormula : Prop
  viscositySolution : Prop
  uniqueContinuation : Prop

structure HamiltonJacobiPDEEvidence (H : HamiltonJacobiPDEPackage) where
  jacobiEquationFormulaClosed : H.jacobiEquationFormula
  viscositySolutionClosed : H.viscositySolution
  uniqueContinuationClosed : H.uniqueContinuation

def HamiltonJacobiPDEClosed (H : HamiltonJacobiPDEPackage) : Prop :=
  H.jacobiEquationFormula ∧ H.viscositySolution ∧ H.uniqueContinuation

theorem hamilton_jacobi_pde_closed_from_evidence
    (H : HamiltonJacobiPDEPackage) (E : HamiltonJacobiPDEEvidence H) :
    HamiltonJacobiPDEClosed H := by
  exact And.intro E.jacobiEquationFormulaClosed
    (And.intro E.viscositySolutionClosed E.uniqueContinuationClosed)

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse
