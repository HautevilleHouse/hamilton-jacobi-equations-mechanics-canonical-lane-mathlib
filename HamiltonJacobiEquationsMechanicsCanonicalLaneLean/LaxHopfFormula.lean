import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HamiltonJacobiEquationsMechanicsCanonicalLaneLean.HamiltonJacobiPDEPackage

namespace HautevilleHouse
namespace HamiltonJacobiEquationsMechanicsCanonicalLaneLean

structure LaxHopfFormulaPackage {H : HamiltonJacobiPDEPackage} where
  initialData : H.stateSpace -> Real
  legendreTransform : (H.stateSpace -> Real) -> (H.stateSpace -> Real)
  formulaExpression : Prop
  semigroupProperty : Prop

structure LaxHopfFormulaEvidence {H : HamiltonJacobiPDEPackage} (L : LaxHopfFormulaPackage H) where
  formulaExpressionClosed : L.formulaExpression
  semigroupPropertyClosed : L.semigroupProperty

def LaxHopfFormulaClosed {H : HamiltonJacobiPDEPackage} (L : LaxHopfFormulaPackage H) : Prop :=
  L.formulaExpression ∧ L.semigroupProperty

theorem lax_hopf_formula_closed_from_evidence
    {H : HamiltonJacobiPDEPackage} (L : LaxHopfFormulaPackage H) (E : LaxHopfFormulaEvidence L) :
    LaxHopfFormulaClosed L := by
  exact And.intro E.formulaExpressionClosed E.semigroupPropertyClosed

end HamiltonJacobiEquationsMechanicsCanonicalLaneLean
end HautevilleHouse
