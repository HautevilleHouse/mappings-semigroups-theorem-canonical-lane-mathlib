import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.RepresentationTheory

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure CayleyPackage {S : SemigroupsPackage} (M : MappingsPackage S) where
  leftRegularRepresentation : M.mappingSet → (S.carrierSet → S.carrierSet)
  leftRegularInjective : Prop
  imageClosedUnderComposition : Prop
  leftRegularInjectiveTerm : leftRegularInjective
  imageClosedUnderCompositionTerm : imageClosedUnderComposition

structure CayleyEvidence {S : SemigroupsPackage} {M : MappingsPackage S}
    (C : CayleyPackage S M) where
  leftRegularInjectiveClosed : C.leftRegularInjective
  imageClosedUnderCompositionClosed : C.imageClosedUnderComposition

def CayleyClosed {S : SemigroupsPackage} {M : MappingsPackage S}
    (C : CayleyPackage S M) : Prop :=
  C.leftRegularInjective ∧ C.imageClosedUnderComposition

theorem cayley_closed_from_evidence
    {S : SemigroupsPackage} {M : MappingsPackage S}
    (C : CayleyPackage S M) (E : CayleyEvidence C) :
    CayleyClosed C := by
  exact And.intro E.leftRegularInjectiveClosed E.imageClosedUnderCompositionClosed

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse