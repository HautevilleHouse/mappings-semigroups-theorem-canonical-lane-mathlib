import canonicalLaneMathlib.SemigroupDecomposition

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure GreensRelationsPackage where
  lRelation : Prop
  rRelation : Prop
  jRelation : Prop
  hRelation : Prop
  dRelation : Prop
  greenLemma : Prop

structure GreensRelationsEvidence (G : GreensRelationsPackage) where
  lRelationClosed : G.lRelation
  rRelationClosed : G.rRelation
  jRelationClosed : G.jRelation
  hRelationClosed : G.hRelation
  dRelationClosed : G.dRelation
  greenLemmaClosed : G.greenLemma

def GreensRelationsClosed (G : GreensRelationsPackage) : Prop :=
  G.lRelation ∧ G.rRelation ∧ G.jRelation ∧
  G.hRelation ∧ G.dRelation ∧ G.greenLemma

theorem greens_relations_closed_from_evidence
    (G : GreensRelationsPackage) (E : GreensRelationsEvidence G) :
    GreensRelationsClosed G := by
  exact And.intro E.lRelationClosed
    (And.intro E.rRelationClosed
      (And.intro E.jRelationClosed
        (And.intro E.hRelationClosed
          (And.intro E.dRelationClosed E.greenLemmaClosed))))

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
