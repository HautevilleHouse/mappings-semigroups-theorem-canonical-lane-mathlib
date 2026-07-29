import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroupsDefs

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure GreenRelationsPackage (S : Type u) (Pkg : MappingsSemigroupsPackage S S) where
  Lrelation : S → S → Prop
  Rrelation : S → S → Prop
  Jrelation : S → S → Prop
  Hrelation : S → S → Prop
  Drelation : S → S → Prop
  Lequivalence : Prop
  Requivalence : Prop
  Jeqivalence : Prop
  Hequivalence : Prop
  Dequivalence : Prop
  greenLemma1 : Prop
  greenLemma2 : Prop

structure GreenRelationsEvidence (S : Type u) (Pkg : MappingsSemigroupsPackage S S) (G : GreenRelationsPackage S Pkg) where
  LequivalenceClosed : G.Lequivalence
  RequivalenceClosed : G.Requivalence
  JeqivalenceClosed : G.Jeqivalence
  HequivalenceClosed : G.Hequivalence
  DequivalenceClosed : G.Dequivalence
  greenLemma1Closed : G.greenLemma1
  greenLemma2Closed : G.greenLemma2

def GreenRelationsClosed (S : Type u) (Pkg : MappingsSemigroupsPackage S S) (G : GreenRelationsPackage S Pkg) : Prop :=
  G.Lequivalence ∧ G.Requivalence ∧ G.Jeqivalence ∧ G.Hequivalence ∧ G.Dequivalence ∧ G.greenLemma1 ∧ G.greenLemma2

theorem green_relations_closed_from_evidence (S : Type u) (Pkg : MappingsSemigroupsPackage S S) (G : GreenRelationsPackage S Pkg) (E : GreenRelationsEvidence S Pkg G) : GreenRelationsClosed S Pkg G := by
  exact And.intro E.LequivalenceClosed (And.intro E.RequivalenceClosed (And.intro E.JeqivalenceClosed (And.intro E.HequivalenceClosed (And.intro E.DequivalenceClosed (And.intro E.greenLemma1Closed E.greenLemma2Closed)))))

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse