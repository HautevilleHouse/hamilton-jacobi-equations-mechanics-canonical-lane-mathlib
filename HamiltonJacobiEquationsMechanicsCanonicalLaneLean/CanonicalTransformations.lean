import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure CanonicalTransformationPackage (H : HamiltonianPackage)
    (P : HamiltonJacobiPDEPackage H) where
  generatingFunction : Type u
  mixedVariables : Type v
  transformationLaw : Prop
  preservesHamiltonian : Prop
  transformationLawTerm : transformationLaw
  preservesHamiltonianTerm : preservesHamiltonian

structure CanonicalTransformationEvidence {H : HamiltonianPackage}
    {P : HamiltonJacobiPDEPackage H}
    (T : CanonicalTransformationPackage H P) where
  transformationLawClosed : T.transformationLaw
  preservesHamiltonianClosed : T.preservesHamiltonian

def CanonicalTransformationClosed {H : HamiltonianPackage}
    {P : HamiltonJacobiPDEPackage H}
    (T : CanonicalTransformationPackage H P) : Prop :=
  T.transformationLaw ∧ T.preservesHamiltonian

theorem canonical_transformation_closed_from_evidence
    {H : HamiltonianPackage} {P : HamiltonJacobiPDEPackage H}
    (T : CanonicalTransformationPackage H P)
    (E : CanonicalTransformationEvidence T) : CanonicalTransformationClosed T := by
  exact And.intro E.transformationLawClosed E.preservesHamiltonianClosed

end HautevilleHouse
end HamiltonJacobiEquationsMechanicsCanonicalLaneLean