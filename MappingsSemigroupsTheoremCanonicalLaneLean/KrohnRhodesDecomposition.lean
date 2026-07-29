import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroupsDefs

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure KrohnRhodesDecomposition (S : Type u) (Pkg : MappingsSemigroupsPackage S S) where
  primeComponents : List (Type u)
  wreathProductConstruction : Prop
  decompositionTheorem : Prop
  complexityBound : Prop

structure KrohnRhodesEvidence (S : Type u) (Pkg : MappingsSemigroupsPackage S S) (K : KrohnRhodesDecomposition S Pkg) where
  wreathProductConstructionClosed : K.wreathProductConstruction
  decompositionTheoremClosed : K.decompositionTheorem
  complexityBoundClosed : K.complexityBound

def KrohnRhodesClosed (S : Type u) (Pkg : MappingsSemigroupsPackage S S) (K : KrohnRhodesDecomposition S Pkg) : Prop :=
  K.wreathProductConstruction ∧ K.decompositionTheorem ∧ K.complexityBound

theorem krohn_rhodes_closed_from_evidence (S : Type u) (Pkg : MappingsSemigroupsPackage S S) (K : KrohnRhodesDecomposition S Pkg) (E : KrohnRhodesEvidence S Pkg K) : KrohnRhodesClosed S Pkg K := by
  exact And.intro E.wreathProductConstructionClosed (And.intro E.decompositionTheoremClosed E.complexityBoundClosed)

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse