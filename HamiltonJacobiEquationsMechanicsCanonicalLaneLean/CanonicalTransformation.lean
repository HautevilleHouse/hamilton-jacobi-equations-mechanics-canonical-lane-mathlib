import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure CanonicalTransformationPackage (P : HamiltonJacobiEquationPackage) where
  generatingFunction : Type u
  mixedVariables : Type v
  pointTransformation : Prop
  preservesHamiltonStructure : Prop
  generatingFunctionExists : Prop

structure CanonicalTransformationEvidence {P : HamiltonJacobiEquationPackage}
    (T : CanonicalTransformationPackage P) where
  pointTransformationClosed : T.pointTransformation
  preservesHamiltonStructureClosed : T.preservesHamiltonStructure
  generatingFunctionExistsClosed : T.generatingFunctionExists

def CanonicalTransformationClosed {P : HamiltonJacobiEquationPackage}
    (T : CanonicalTransformationPackage P) : Prop :=
  T.pointTransformation ∧ T.preservesHamiltonStructure ∧ T.generatingFunctionExists

theorem canonical_transformation_closed_from_evidence
    {P : HamiltonJacobiEquationPackage} (T : CanonicalTransformationPackage P)
    (E : CanonicalTransformationEvidence T) : CanonicalTransformationClosed T := by
  exact And.intro E.pointTransformationClosed
    (And.intro E.preservesHamiltonStructureClosed E.generatingFunctionExistsClosed)

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse