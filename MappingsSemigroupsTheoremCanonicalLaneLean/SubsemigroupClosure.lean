import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroup

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure SubsemigroupPackage (M : MappingsSemigroupPackage) where
  carrier : Set M.underlyingSet
  closedUnderOperation : ∀ a b, a ∈ carrier → b ∈ carrier → M.binaryOperation a b ∈ carrier

structure SubsemigroupEvidence (M : MappingsSemigroupPackage) (S : SubsemigroupPackage M) where
  closedUnderOperationClosed : S.closedUnderOperation

def SubsemigroupClosed (M : MappingsSemigroupPackage) (S : SubsemigroupPackage M) : Prop :=
  S.closedUnderOperation

theorem subsemigroup_closed_from_evidence (M : MappingsSemigroupPackage) (S : SubsemigroupPackage M) (E : SubsemigroupEvidence M S) : SubsemigroupClosed M S := by
  exact E.closedUnderOperationClosed

end HautevilleHouse
end HautevilleHouse