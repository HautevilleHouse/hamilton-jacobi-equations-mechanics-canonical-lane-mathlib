import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure ActionMinimizationPackage {P : HamiltonJacobiEquationPackage}
    (T : CanonicalTransformationPackage P) where
  Lagrangian : Type u
  actionFunctional : Type v
  EulerLagrangeEquations : Prop
  minimizationPrinciple : Prop
  geodesicCompatibility : Prop

structure ActionMinimizationEvidence {P : HamiltonJacobiEquationPackage}
    {T : CanonicalTransformationPackage P} (A : ActionMinimizationPackage T) where
  EulerLagrangeEquationsClosed : A.EulerLagrangeEquations
  minimizationPrincipleClosed : A.minimizationPrinciple
  geodesicCompatibilityClosed : A.geodesicCompatibility

def ActionMinimizationClosed {P : HamiltonJacobiEquationPackage}
    {T : CanonicalTransformationPackage P} (A : ActionMinimizationPackage T) : Prop :=
  A.EulerLagrangeEquations ∧ A.minimizationPrinciple ∧ A.geodesicCompatibility

theorem action_minimization_closed_from_evidence
    {P : HamiltonJacobiEquationPackage} {T : CanonicalTransformationPackage P}
    (A : ActionMinimizationPackage T) (E : ActionMinimizationEvidence A) :
    ActionMinimizationClosed A := by
  exact And.intro E.EulerLagrangeEquationsClosed
    (And.intro E.minimizationPrincipleClosed E.geodesicCompatibilityClosed)

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse