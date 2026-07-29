import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure GreenRelationsPackage where
  semigroup : Type u
  jRelation : Prop
  hRelation : Prop
  dRelation : Prop
  lRelation : Prop
  rRelation : Prop
  relationsConsistent : Prop

structure GreenRelationsEvidence (G : GreenRelationsPackage) where
  jRelationClosed : G.jRelation
  hRelationClosed : G.hRelation
  dRelationClosed : G.dRelation
  lRelationClosed : G.lRelation
  rRelationClosed : G.rRelation
  relationsConsistentClosed : G.relationsConsistent

def GreenRelationsClosed (G : GreenRelationsPackage) : Prop :=
  G.jRelation ∧ G.hRelation ∧ G.dRelation ∧ G.lRelation ∧ G.rRelation ∧ G.relationsConsistent

theorem green_relations_closed_from_evidence (G : GreenRelationsPackage)
    (E : GreenRelationsEvidence G) : GreenRelationsClosed G := by
  exact And.intro E.jRelationClosed
    (And.intro E.hRelationClosed
      (And.intro E.dRelationClosed
        (And.intro E.lRelationClosed
          (And.intro E.rRelationClosed E.relationsConsistentClosed))))

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
