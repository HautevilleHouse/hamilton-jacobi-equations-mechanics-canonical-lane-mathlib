import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HamiltonJacobiEquationsMechanicsCanonicalLaneLean.HamiltonJacobiPDEPackage

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure ViscositySolutionPackage {H : HamiltonJacobiPDEPackage} where
  testFunctions : Type u
  subsolutionDefinition : Prop
  supersolutionDefinition : Prop
  comparisonPrinciple : Prop
  uniquenessTheorem : Prop

structure ViscositySolutionEvidence {H : HamiltonJacobiPDEPackage} (V : ViscositySolutionPackage H) where
  subsolutionDefinitionClosed : V.subsolutionDefinition
  supersolutionDefinitionClosed : V.supersolutionDefinition
  comparisonPrincipleClosed : V.comparisonPrinciple
  uniquenessTheoremClosed : V.uniquenessTheorem

def ViscositySolutionClosed {H : HamiltonJacobiPDEPackage} (V : ViscositySolutionPackage H) : Prop :=
  V.subsolutionDefinition ∧ V.supersolutionDefinition ∧ V.comparisonPrinciple ∧ V.uniquenessTheorem

theorem viscosity_solution_closed_from_evidence
    {H : HamiltonJacobiPDEPackage} (V : ViscositySolutionPackage H) (E : ViscositySolutionEvidence V) :
    ViscositySolutionClosed V := by
  exact And.intro E.subsolutionDefinitionClosed
    (And.intro E.supersolutionDefinitionClosed
      (And.intro E.comparisonPrincipleClosed E.uniquenessTheoremClosed))

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse
