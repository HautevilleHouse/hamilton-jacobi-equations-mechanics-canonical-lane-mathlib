import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure ActionAnglePackage (H : HamiltonianPackage)
    (P : HamiltonJacobiPDEPackage H) where
  torusFibration : Type u
  actionVariables : Type v
  angleVariables : Type w
  frequencyVector : Type x
  integrableSystem : Prop
  hamiltonJacobiSeparable : Prop
  actionAngleConditions : Prop
  integrableSystemTerm : integrableSystem
  hamiltonJacobiSeparableTerm : hamiltonJacobiSeparable
  actionAngleConditionsTerm : actionAngleConditions

structure ActionAngleEvidence {H : HamiltonianPackage}
    {P : HamiltonJacobiPDEPackage H}
    (A : ActionAnglePackage H P) where
  integrableSystemClosed : A.integrableSystem
  hamiltonJacobiSeparableClosed : A.hamiltonJacobiSeparable
  actionAngleConditionsClosed : A.actionAngleConditions

def ActionAngleClosed {H : HamiltonianPackage}
    {P : HamiltonJacobiPDEPackage H}
    (A : ActionAnglePackage H P) : Prop :=
  A.integrableSystem ∧ A.hamiltonJacobiSeparable ∧ A.actionAngleConditions

theorem action_angle_closed_from_evidence
    {H : HamiltonianPackage} {P : HamiltonJacobiPDEPackage H}
    (A : ActionAnglePackage H P)
    (E : ActionAngleEvidence A) : ActionAngleClosed A := by
  exact And.intro E.integrableSystemClosed
    (And.intro E.hamiltonJacobiSeparableClosed E.actionAngleConditionsClosed)

end HautevilleHouse
end HamiltonJacobiEquationsMechanicsCanonicalLaneLean