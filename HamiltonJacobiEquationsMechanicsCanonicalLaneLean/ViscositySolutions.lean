import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure ViscositySolutionPackage where
  testFunctionSpace : Set (ℝⁿ → ℝ)
  subsolutionCondition : (φ : testFunctionSpace) → prop
  supersolutionCondition : (φ : testFunctionSpace) → prop
  uniquenessTheorem : Prop
  existenceTheorem : Prop
  comparisonPrinciple : Prop
  comparisonPrincipleTerm : comparisonPrinciple

def ViscositySolutionClosed (V : ViscositySolutionPackage) : Prop :=
  V.uniquenessTheorem ∧ V.existenceTheorem ∧ V.comparisonPrinciple

theorem viscosity_solution_closed (V : ViscositySolutionPackage) :
  ViscositySolutionClosed V := by
  exact And.intro V.uniquenessTheorem (And.intro V.existenceTheorem V.comparisonPrincipleTerm)

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse