import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure ViscositySolutionPackage (P : HamiltonJacobiEquationPackage) where
  testFunctions : Type u
  subSolutionCondition : Prop
  superSolutionCondition : Prop
  comparisonPrinciple : Prop
  uniquenessResult : Prop

structure ViscositySolutionEvidence {P : HamiltonJacobiEquationPackage}
    (V : ViscositySolutionPackage P) where
  subSolutionConditionClosed : V.subSolutionCondition
  superSolutionConditionClosed : V.superSolutionCondition
  comparisonPrincipleClosed : V.comparisonPrinciple
  uniquenessResultClosed : V.uniquenessResult

def ViscositySolutionClosed {P : HamiltonJacobiEquationPackage}
    (V : ViscositySolutionPackage P) : Prop :=
  V.subSolutionCondition ∧ V.superSolutionCondition ∧
  V.comparisonPrinciple ∧ V.uniquenessResult

theorem viscosity_solution_closed_from_evidence
    {P : HamiltonJacobiEquationPackage} (V : ViscositySolutionPackage P)
    (E : ViscositySolutionEvidence V) : ViscositySolutionClosed V := by
  exact And.intro E.subSolutionConditionClosed
    (And.intro E.superSolutionConditionClosed
      (And.intro E.comparisonPrincipleClosed E.uniquenessResultClosed))

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse