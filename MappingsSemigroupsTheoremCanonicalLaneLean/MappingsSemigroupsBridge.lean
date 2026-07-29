import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure MappingsSemigroupsAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  mappingCone : Type v
  semigroupStructure : Semigroup mappingCone
  injection : mappingCone -> space
  projection : space -> mappingCone
  exactnessCondition : Prop
  conclusion : exactnessCondition

structure MappingsSemigroupsAdmissibleClass where
  object : MappingsSemigroupsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MappingsSemigroupsAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
