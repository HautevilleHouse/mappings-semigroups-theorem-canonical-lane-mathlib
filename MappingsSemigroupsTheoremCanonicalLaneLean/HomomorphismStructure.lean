import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroup

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure SemigroupHomomorphism (M N : MappingsSemigroupPackage) where
  toFun : M.underlyingSet → N.underlyingSet
  preservesOperation : ∀ a b : M.underlyingSet, toFun (M.binaryOperation a b) = N.binaryOperation (toFun a) (toFun b)

structure HomomorphismEvidence (M N : MappingsSemigroupPackage) (φ : SemigroupHomomorphism M N) where
  preservesOperationClosed : φ.preservesOperation

def HomomorphismClosed (M N : MappingsSemigroupPackage) (φ : SemigroupHomomorphism M N) : Prop :=
  φ.preservesOperation

theorem homomorphism_closed_from_evidence (M N : MappingsSemigroupPackage) (φ : SemigroupHomomorphism M N) (E : HomomorphismEvidence M N φ) : HomomorphismClosed M N φ := by
  exact E.preservesOperationClosed

end HautevilleHouse
end HautevilleHouse