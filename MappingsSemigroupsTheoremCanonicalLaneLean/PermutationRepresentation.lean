import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure PermutationRepresentationPackage where
  underlyingSet : Type u
  permutationAction : underlyingSet → underlyingSet
  bijective : Prop

structure PermutationRepresentationEvidence (P : PermutationRepresentationPackage) where
  bijectiveClosed : P.bijective

def PermutationRepresentationClosed (P : PermutationRepresentationPackage) : Prop :=
  P.bijective

theorem permutation_representation_closed_from_evidence
    (P : PermutationRepresentationPackage)
    (E : PermutationRepresentationEvidence P) : PermutationRepresentationClosed P := by
  exact E.bijectiveClosed

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
