import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure SemigroupAction (S M : Type u) where
  act : S → M → M
  compat : (s t : S) (x : M) → act (s * t) x = act s (act t x)

structure MappingsSemigroupsPackage (S M : Type u) where
  semigroup : Semigroup S
  action : SemigroupAction S M
  semigroupOperationCompatible : Prop
  actionRespectsSemigroup : Prop
  representationFullyDefined : Prop

structure MappingsSemigroupsEvidence (S M : Type u) (Pkg : MappingsSemigroupsPackage S M) where
  semigroupOperationCompatibleClosed : Pkg.semigroupOperationCompatible
  actionRespectsSemigroupClosed : Pkg.actionRespectsSemigroup
  representationFullyDefinedClosed : Pkg.representationFullyDefined

def MappingsSemigroupsClosed (S M : Type u) (Pkg : MappingsSemigroupsPackage S M) : Prop :=
  Pkg.semigroupOperationCompatible ∧ Pkg.actionRespectsSemigroup ∧ Pkg.representationFullyDefined

theorem mappings_semigroups_closed_from_evidence (S M : Type u) (Pkg : MappingsSemigroupsPackage S M) (E : MappingsSemigroupsEvidence S M Pkg) : MappingsSemigroupsClosed S M Pkg := by
  exact And.intro E.semigroupOperationCompatibleClosed (And.intro E.actionRespectsSemigroupClosed E.representationFullyDefinedClosed)

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse