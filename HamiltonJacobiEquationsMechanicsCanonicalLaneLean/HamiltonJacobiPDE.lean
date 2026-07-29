import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure HamiltonianPackage where
  phaseSpace : Type u
  symplecticForm : Type v
  hamiltonianFunction : Type w
  hamiltonianSmooth : Prop
  hamiltonianSmoothTerm : hamiltonianSmooth

structure HamiltonianEvidence (H : HamiltonianPackage) where
  hamiltonianSmoothClosed : H.hamiltonianSmooth

def HamiltonianClosed (H : HamiltonianPackage) : Prop :=
  H.hamiltonianSmooth

theorem hamiltonian_closed_from_evidence (H : HamiltonianPackage)
    (E : HamiltonianEvidence H) : HamiltonianClosed H := by
  exact E.hamiltonianSmoothClosed

structure HamiltonJacobiPDEPackage (H : HamiltonianPackage) where
  hamiltonJacobiEquation : Prop
  initialCondition : Prop
  viscositySolution : Prop
  hamiltonJacobiEquationTerm : hamiltonJacobiEquation
  initialConditionTerm : initialCondition
  viscositySolutionTerm : viscositySolution

structure HamiltonJacobiPDEEvidence {H : HamiltonianPackage}
    (P : HamiltonJacobiPDEPackage H) where
  hamiltonJacobiEquationClosed : P.hamiltonJacobiEquation
  initialConditionClosed : P.initialCondition
  viscositySolutionClosed : P.viscositySolution

def HamiltonJacobiPDEClosed {H : HamiltonianPackage}
    (P : HamiltonJacobiPDEPackage H) : Prop :=
  P.hamiltonJacobiEquation ∧ P.initialCondition ∧ P.viscositySolution

theorem hamiton_jacobi_pde_closed_from_evidence
    {H : HamiltonianPackage} (P : HamiltonJacobiPDEPackage H)
    (E : HamiltonJacobiPDEEvidence P) : HamiltonJacobiPDEClosed P := by
  exact And.intro E.hamiltonJacobiEquationClosed
    (And.intro E.initialConditionClosed E.viscositySolutionClosed)

end HautevilleHouse
end HamiltonJacobiEquationsMechanicsCanonicalLaneLean