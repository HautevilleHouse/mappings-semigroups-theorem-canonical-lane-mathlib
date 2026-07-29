import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.MappingsStructure

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure RepresentationPackage {S : SemigroupsPackage} {M : MappingsPackage S} where
  representationSpace : Type u
  representationMap : M.mappingSet → (representationSpace → representationSpace)
  respectsComposition : Prop
  respectsIdentity : Prop
  respectsCompositionTerm : respectsComposition
  respectsIdentityTerm : respectsIdentity

structure RepresentationEvidence {S : SemigroupsPackage} {M : MappingsPackage S}
    (R : RepresentationPackage S M) where
  respectsCompositionClosed : R.respectsComposition
  respectsIdentityClosed : R.respectsIdentity

def RepresentationClosed {S : SemigroupsPackage} {M : MappingsPackage S}
    (R : RepresentationPackage S M) : Prop :=
  R.respectsComposition ∧ R.respectsIdentity

theorem representation_closed_from_evidence
    {S : SemigroupsPackage} {M : MappingsPackage S}
    (R : RepresentationPackage S M) (E : RepresentationEvidence R) :
    RepresentationClosed R := by
  exact And.intro E.respectsCompositionClosed E.respectsIdentityClosed

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse