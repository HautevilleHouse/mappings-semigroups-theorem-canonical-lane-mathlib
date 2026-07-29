import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.SemigroupsPackage

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure MappingsPackage {S : SemigroupsPackage} where
  mappingSet : Type u
  domain : mappingSet → S.carrierSet
  codomain : mappingSet → S.carrierSet
  mappingComposition : mappingSet → mappingSet → mappingSet
  compositionAssociative : Prop
  identityExists : Prop
  compositionAssociativeTerm : compositionAssociative
  identityExistsTerm : identityExists

structure MappingsEvidence {S : SemigroupsPackage} (M : MappingsPackage S) where
  compositionAssociativeClosed : M.compositionAssociative
  identityExistsClosed : M.identityExists

def MappingsClosed {S : SemigroupsPackage} (M : MappingsPackage S) : Prop :=
  M.compositionAssociative ∧ M.identityExists

theorem mappings_closed_from_evidence
    {S : SemigroupsPackage} (M : MappingsPackage S) (E : MappingsEvidence M) :
    MappingsClosed M := by
  exact And.intro E.compositionAssociativeClosed E.identityExistsClosed

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse