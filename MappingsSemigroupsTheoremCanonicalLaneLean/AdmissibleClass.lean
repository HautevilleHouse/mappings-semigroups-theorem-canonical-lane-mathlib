import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroup

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MappingsSemigroupPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MappingsSemigroupClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end HautevilleHouse