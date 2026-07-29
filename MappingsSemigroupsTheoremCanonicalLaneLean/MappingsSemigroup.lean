import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure MappingsSemigroupPackage where
  underlyingSet : Type u
  binaryOperation : underlyingSet → underlyingSet → underlyingSet
  associativity : ∀ a b c : underlyingSet, binaryOperation (binaryOperation a b) c = binaryOperation a (binaryOperation b c)
  identityElement : underlyingSet
  leftIdentity : ∀ a : underlyingSet, binaryOperation identityElement a = a
  rightIdentity : ∀ a : underlyingSet, binaryOperation a identityElement = a

structure MappingsSemigroupEvidence (M : MappingsSemigroupPackage) where
  associativityClosed : M.associativity
  identityClosed : ∀ a : M.underlyingSet, M.binaryOperation M.identityElement a = a ∧ M.binaryOperation a M.identityElement = a

def MappingsSemigroupClosed (M : MappingsSemigroupPackage) : Prop :=
  M.associativity ∧ (∀ a : M.underlyingSet, M.binaryOperation M.identityElement a = a ∧ M.binaryOperation a M.identityElement = a)

theorem mappings_semigroup_closed_from_evidence (M : MappingsSemigroupPackage) (E : MappingsSemigroupEvidence M) : MappingsSemigroupClosed M := by
  exact And.intro E.associativityClosed E.identityClosed

end HautevilleHouse
end HautevilleHouse