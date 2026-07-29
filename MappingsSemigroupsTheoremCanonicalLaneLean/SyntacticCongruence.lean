import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure SyntacticCongruencePackage where
  semigroup : Type u
  syntacticCongruence : semigroup → semigroup → Prop
  congruenceTransitive : Prop
  congruenceSymmetric : Prop
  congruenceReflexive : Prop
  congruenceCompatible : Prop

structure SyntacticCongruenceEvidence (S : SyntacticCongruencePackage) where
  congruenceTransitiveClosed : S.congruenceTransitive
  congruenceSymmetricClosed : S.congruenceSymmetric
  congruenceReflexiveClosed : S.congruenceReflexive
  congruenceCompatibleClosed : S.congruenceCompatible

def SyntacticCongruenceClosed (S : SyntacticCongruencePackage) : Prop :=
  S.congruenceTransitive ∧ S.congruenceSymmetric ∧ S.congruenceReflexive ∧ S.congruenceCompatible

theorem syntactic_congruence_closed_from_evidence (S : SyntacticCongruencePackage)
    (E : SyntacticCongruenceEvidence S) : SyntacticCongruenceClosed S := by
  exact And.intro E.congruenceTransitiveClosed
    (And.intro E.congruenceSymmetricClosed
      (And.intro E.congruenceReflexiveClosed E.congruenceCompatibleClosed))

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
