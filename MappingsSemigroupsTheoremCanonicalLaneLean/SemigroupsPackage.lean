import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure SemigroupsPackage where
  carrierSet : Type u
  binaryOperation : carrierSet → carrierSet → carrierSet
  associativity : Prop
  associativityTerm : associativity

structure SemigroupsEvidence (S : SemigroupsPackage) where
  associativityClosed : S.associativity

def SemigroupsClosed (S : SemigroupsPackage) : Prop :=
  S.associativity

theorem semigroups_closed_from_evidence (S : SemigroupsPackage) (E : SemigroupsEvidence S) :
    SemigroupsClosed S := by
  exact E.associativityClosed

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse