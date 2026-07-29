import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure HamiltonJacobiSystem (M : Type u) [TopologicalSpace M] where
  configSpace : Type u
  phaseSpace : Type v
  hamiltonian : configSpace × phaseSpace → ℝ
  actionFunctional : (ℝ → configSpace) → ℝ
  principalFunction : configSpace × ℝ → ℝ
  satisfiesHamiltonJacobi : Prop
  endpointCondition : Prop

def HamiltonJacobiSystemClosed (H : HamiltonJacobiSystem) : Prop :=
  H.satisfiesHamiltonJacobi ∧ H.endpointCondition

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse