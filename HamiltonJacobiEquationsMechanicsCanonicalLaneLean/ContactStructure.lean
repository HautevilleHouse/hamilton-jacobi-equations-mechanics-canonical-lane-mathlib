import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure ContactStructurePackage where
  contactManifold : Type u
  contactForm : DifferentialForm contactManifold 1
  reebVectorField : VectorField contactManifold
  legendrianSubmanifold : Submanifold contactManifold
  contactHamiltonian : (contactManifold → ℝ) → ℝ

def ContactStructureClosed (C : ContactStructurePackage) : Prop :=
  C.legendrianSubmanifold ∧ C.contactHamiltonian

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse