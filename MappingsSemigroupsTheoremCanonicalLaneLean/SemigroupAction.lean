import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure SemigroupActionPackage where
  semigroup : Type u
  actingOn : Type v
  actionMap : semigroup → actingOn → actingOn
  actionAssociative : Prop
  actionIdentity : Prop

structure SemigroupActionEvidence (S : SemigroupActionPackage) where
  actionAssociativeClosed : S.actionAssociative
  actionIdentityClosed : S.actionIdentity

def SemigroupActionClosed (S : SemigroupActionPackage) : Prop :=
  S.actionAssociative ∧ S.actionIdentity

theorem semigroup_action_closed_from_evidence (S : SemigroupActionPackage)
    (E : SemigroupActionEvidence S) : SemigroupActionClosed S := by
  exact And.intro E.actionAssociativeClosed E.actionIdentityClosed

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
