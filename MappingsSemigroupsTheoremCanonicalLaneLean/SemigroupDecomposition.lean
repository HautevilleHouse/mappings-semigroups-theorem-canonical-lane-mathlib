import canonicalLaneMathlib.RepresentationTheorems

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure SemigroupDecompositionPackage where
  idealSeries : Prop
  principalFactorDecomposition : Prop
  reesMatrixRepresentation : Prop
  structureMappingsCharacterized : Prop

structure SemigroupDecompositionEvidence (D : SemigroupDecompositionPackage) where
  idealSeriesClosed : D.idealSeries
  principalFactorDecompositionClosed : D.principalFactorDecomposition
  reesMatrixRepresentationClosed : D.reesMatrixRepresentation
  structureMappingsCharacterizedClosed : D.structureMappingsCharacterized

def SemigroupDecompositionClosed (D : SemigroupDecompositionPackage) : Prop :=
  D.idealSeries ∧ D.principalFactorDecomposition ∧
  D.reesMatrixRepresentation ∧ D.structureMappingsCharacterized

theorem semigroup_decomposition_closed_from_evidence
    (D : SemigroupDecompositionPackage) (E : SemigroupDecompositionEvidence D) :
    SemigroupDecompositionClosed D := by
  exact And.intro E.idealSeriesClosed
    (And.intro E.principalFactorDecompositionClosed
      (And.intro E.reesMatrixRepresentationClosed
        E.structureMappingsCharacterizedClosed))

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
