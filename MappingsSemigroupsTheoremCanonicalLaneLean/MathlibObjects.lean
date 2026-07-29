import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure MappingsSemigroupsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MappingsSemigroupsAdmittedObject where
  space : MappingsSemigroupsSpace
  mappingSemigroup : Type
  semigroupStructure : Semigroup mappingSemigroup
  representationTheoremHolds : Prop
  conclusion : representationTheoremHolds

def MappingsSemigroupsWitnessClosed (O : MappingsSemigroupsAdmittedObject) : Prop :=
  O.representationTheoremHolds

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
