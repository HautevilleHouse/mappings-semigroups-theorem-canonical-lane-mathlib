import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroup

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure CongruenceRelation (M : MappingsSemigroupPackage) where
  rel : M.underlyingSet → M.underlyingSet → Prop
  reflexive : ∀ a, rel a a
  symmetric : ∀ a b, rel a b → rel b a
  transitive : ∀ a b c, rel a b → rel b c → rel a c
  compatible : ∀ a b c d, rel a b → rel c d → rel (M.binaryOperation a c) (M.binaryOperation b d)

structure CongruenceEvidence (M : MappingsSemigroupPackage) (C : CongruenceRelation M) where
  reflexiveClosed : C.reflexive
  symmetricClosed : C.symmetric
  transitiveClosed : C.transitive
  compatibleClosed : C.compatible

def CongruenceClosed (M : MappingsSemigroupPackage) (C : CongruenceRelation M) : Prop :=
  C.reflexive ∧ C.symmetric ∧ C.transitive ∧ C.compatible

theorem congruence_closed_from_evidence (M : MappingsSemigroupPackage) (C : CongruenceRelation M) (E : CongruenceEvidence M C) : CongruenceClosed M C := by
  exact And.intro E.reflexiveClosed (And.intro E.symmetricClosed (And.intro E.transitiveClosed E.compatibleClosed))

end HautevilleHouse
end HautevilleHouse