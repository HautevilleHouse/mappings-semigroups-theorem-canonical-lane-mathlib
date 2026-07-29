import canonicalLaneMathlib.MathlibObjects
import Mathlib.GroupTheory.Semigroup

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure RepresentationTheoremsPackage where
  cayleyRepresentation : Prop
  wagnerPrestonRepresentation : Prop
  syntacticMonoidRepresentation : Prop
  representationUniqueness : Prop

structure RepresentationTheoremsEvidence (R : RepresentationTheoremsPackage) where
  cayleyRepresentationClosed : R.cayleyRepresentation
  wagnerPrestonRepresentationClosed : R.wagnerPrestonRepresentation
  syntacticMonoidRepresentationClosed : R.syntacticMonoidRepresentation
  representationUniquenessClosed : R.representationUniqueness

def RepresentationTheoremsClosed (R : RepresentationTheoremsPackage) : Prop :=
  R.cayleyRepresentation ∧ R.wagnerPrestonRepresentation ∧
  R.syntacticMonoidRepresentation ∧ R.representationUniqueness

theorem representation_theorems_closed_from_evidence
    (R : RepresentationTheoremsPackage) (E : RepresentationTheoremsEvidence R) :
    RepresentationTheoremsClosed R := by
  exact And.intro E.cayleyRepresentationClosed
    (And.intro E.wagnerPrestonRepresentationClosed
      (And.intro E.syntacticMonoidRepresentationClosed
        E.representationUniquenessClosed))

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
