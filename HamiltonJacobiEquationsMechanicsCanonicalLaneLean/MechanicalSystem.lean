import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure MechanicalSystemPackage {P : HamiltonJacobiEquationPackage}
    {T : CanonicalTransformationPackage P} (A : ActionMinimizationPackage T) where
  phaseSpace : Type u
  symplecticForm : Type v
  hamiltonianVectorField : Type w
  integrabilityConditions : Prop
  poissonBracketStructure : Prop

structure MechanicalSystemEvidence {P : HamiltonJacobiEquationPackage}
    {T : CanonicalTransformationPackage P} {A : ActionMinimizationPackage T}
    (M : MechanicalSystemPackage A) where
  integrabilityConditionsClosed : M.integrabilityConditions
  poissonBracketStructureClosed : M.poissonBracketStructure

def MechanicalSystemClosed {P : HamiltonJacobiEquationPackage}
    {T : CanonicalTransformationPackage P} {A : ActionMinimizationPackage T}
    (M : MechanicalSystemPackage A) : Prop :=
  M.integrabilityConditions ∧ M.poissonBracketStructure

theorem mechanical_system_closed_from_evidence
    {P : HamiltonJacobiEquationPackage} {T : CanonicalTransformationPackage P}
    {A : ActionMinimizationPackage T} (M : MechanicalSystemPackage A)
    (E : MechanicalSystemEvidence M) : MechanicalSystemClosed M := by
  exact And.intro E.integrabilityConditionsClosed
    E.poissonBracketStructureClosed

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse