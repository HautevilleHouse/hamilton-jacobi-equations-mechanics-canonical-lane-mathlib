import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure CauchySurfacePackage (H : HamiltonJacobiSystem) where
  initialSurface : H.configSpace → ℝ
  compatibilityCondition : Prop
  evolutionLifted : Prop
  compatibilityConditionClosed : compatibilityCondition
  evolutionLiftedClosed : evolutionLifted

def CauchySurfacePackageClosed {H : HamiltonJacobiSystem} (C : CauchySurfacePackage H) : Prop :=
  C.compatibilityCondition ∧ C.evolutionLifted

theorem cauchy_surface_package_closed_from_evidence
    {H : HamiltonJacobiSystem} (C : CauchySurfacePackage H) :
    CauchySurfacePackageClosed C := by
  exact And.intro C.compatibilityConditionClosed C.evolutionLiftedClosed

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse