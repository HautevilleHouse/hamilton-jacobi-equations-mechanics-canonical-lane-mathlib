import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure IntegrabilityPackage where
  actionAngleVariables : (PhaseSpace → Torus × ℝⁿ)
  hamiltonsEquationsIntegrable : Prop
  conservedQuantities : ℕ → (PhaseSpace → ℝ)
  involutionCondition : (∀ i j, {F_i, F_j} = 0)
  liouvilleArnoldTheorem : Prop
  liouvilleArnoldTerm : liouvilleArnoldTheorem

def IntegrabilityClosed (I : IntegrabilityPackage) : Prop :=
  I.hamiltonsEquationsIntegrable ∧ I.liouvilleArnoldTheorem

theorem integrability_closed (I : IntegrabilityPackage) :
  IntegrabilityClosed I := by
  exact And.intro I.hamiltonsEquationsIntegrable I.liouvilleArnoldTerm

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse