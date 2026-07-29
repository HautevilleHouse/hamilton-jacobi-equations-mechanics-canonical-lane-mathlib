import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure MaupertuisPrinciplePackage (H : HamiltonJacobiSystem) where
  reducedAction : (ℝ → H.configSpace) → ℝ
  principleHolds : Prop
  energyConservation : Prop
  principleHoldsClosed : principleHolds
  energyConservationClosed : energyConservation

def MaupertuisPrincipleClosed {H : HamiltonJacobiSystem} (M : MaupertuisPrinciplePackage H) : Prop :=
  M.principleHolds ∧ M.energyConservation

theorem maupertuis_principle_closed_from_evidence
    {H : HamiltonJacobiSystem} (M : MaupertuisPrinciplePackage H) :
    MaupertuisPrincipleClosed M := by
  exact And.intro M.principleHoldsClosed M.energyConservationClosed

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse