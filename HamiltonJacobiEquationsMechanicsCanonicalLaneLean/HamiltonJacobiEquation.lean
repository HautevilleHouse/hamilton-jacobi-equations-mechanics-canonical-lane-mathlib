import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure HamiltonJacobiEquationPackage where
  configurationSpace : Type u
  timeDomain : Type v
  hamiltonian : (timeDomain -> configurationSpace -> (configurationSpace -> ℝ) -> ℝ) -> Prop
  actionFunctional : Type w
  hjiEquation : Prop
  viscositySolution : Prop
  legendreTransform : Prop

structure HamiltonJacobiEquationEvidence (P : HamiltonJacobiEquationPackage) where
  hjiEquationClosed : P.hjiEquation
  viscositySolutionClosed : P.viscositySolution
  legendreTransformClosed : P.legendreTransform

def HamiltonJacobiEquationClosed (P : HamiltonJacobiEquationPackage) : Prop :=
  P.hjiEquation ∧ P.viscositySolution ∧ P.legendreTransform

theorem hamilton_jacobi_equation_closed_from_evidence
    (P : HamiltonJacobiEquationPackage) (E : HamiltonJacobiEquationEvidence P) :
    HamiltonJacobiEquationClosed P := by
  exact And.intro E.hjiEquationClosed
    (And.intro E.viscositySolutionClosed E.legendreTransformClosed)

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse