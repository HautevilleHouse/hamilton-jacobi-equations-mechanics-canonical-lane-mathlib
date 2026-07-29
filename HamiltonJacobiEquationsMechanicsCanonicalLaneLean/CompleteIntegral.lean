import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure CompleteIntegralPackage (H : HamiltonJacobiSystem) where
  familyOfSolutions : ℝ × H.configSpace × ℝ → ℝ
  completenessCondition : Prop
  envelopeConstruction : Prop
  completenessConditionClosed : completenessCondition
  envelopeConstructionClosed : envelopeConstruction

def CompleteIntegralClosed {H : HamiltonJacobiSystem} (C : CompleteIntegralPackage H) : Prop :=
  C.completenessCondition ∧ C.envelopeConstruction

theorem complete_integral_closed_from_evidence
    {H : HamiltonJacobiSystem} (C : CompleteIntegralPackage H) :
    CompleteIntegralClosed C := by
  exact And.intro C.completenessConditionClosed C.envelopeConstructionClosed

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse