import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroupsDefs

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure EndomorphismRepresentation (S M : Type u) (Pkg : MappingsSemigroupsPackage S M) where
  map : S → M → M
  respectsAction : ∀ (s : S) (m : M), Pkg.action.act s (map s m) = map s (Pkg.action.act s m)
  isEndomorphism : Prop

structure EndomorphismEvidence (S M : Type u) (Pkg : MappingsSemigroupsPackage S M) (E : EndomorphismRepresentation S M Pkg) where
  respectsActionClosed : E.respectsAction
  isEndomorphismClosed : E.isEndomorphism

def EndomorphismClosed (S M : Type u) (Pkg : MappingsSemigroupsPackage S M) (E : EndomorphismRepresentation S M Pkg) : Prop :=
  E.respectsAction ∧ E.isEndomorphism

theorem endomorphism_closed_from_evidence (S M : Type u) (Pkg : MappingsSemigroupsPackage S M) (E : EndomorphismRepresentation S M Pkg) (Ev : EndomorphismEvidence S M Pkg E) : EndomorphismClosed S M Pkg E := by
  exact And.intro Ev.respectsActionClosed Ev.isEndomorphismClosed

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse