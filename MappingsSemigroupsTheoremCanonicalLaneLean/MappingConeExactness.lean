import canonicalLaneMathlib.AdmissibleClass
import MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroupsBridge

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure MappingConeExactnessPackage {A : MappingsSemigroupsAdmittedObject} where
  mappingCone : A.mappingCone
  semigroupStructure : Semigroup mappingCone := A.semigroupStructure
  injection : mappingCone -> A.space := A.injection
  projection : A.space -> mappingCone := A.projection
  exactSequenceCondition : Prop
  kernelInclusion : Prop
  cokernelProjection : Prop
  homologyVanishes : Prop

structure MappingConeExactnessEvidence {A : MappingsSemigroupsAdmittedObject}
    (P : MappingConeExactnessPackage A) where
  exactSequenceConditionClosed : P.exactSequenceCondition
  kernelInclusionClosed : P.kernelInclusion
  cokernelProjectionClosed : P.cokernelProjection
  homologyVanishesClosed : P.homologyVanishes

def MappingConeExactnessClosed {A : MappingsSemigroupsAdmittedObject}
    (P : MappingConeExactnessPackage A) : Prop :=
  P.exactSequenceCondition ∧ P.kernelInclusion ∧ P.cokernelProjection ∧ P.homologyVanishes

theorem mapping_cone_exactness_closed_from_evidence
    {A : MappingsSemigroupsAdmittedObject} (P : MappingConeExactnessPackage A)
    (E : MappingConeExactnessEvidence P) : MappingConeExactnessClosed P := by
  exact And.intro E.exactSequenceConditionClosed
    (And.intro E.kernelInclusionClosed
      (And.intro E.cokernelProjectionClosed E.homologyVanishesClosed))

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
