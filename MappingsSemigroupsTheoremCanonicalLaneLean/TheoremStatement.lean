import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  mappingsConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "mappings-semigroups-canonical-lane",
    theoremName := "Mappings Semigroups Theorem",
    theoremObject := "Every finite semigroup of mappings on a finite set is embeddable in a finite semigroup of transformations",
    classicalBoundary := "unrestricted classical closure: full semigroup representation theorem reliant on classical mathematics",
    mappingsConstrainedStatement := "mappings-constrained theorem certificate internalized through admissible-class bridge and gate",
    certificateLane := "mappings_constrained",
    carriedRemainder := "classical source boundary carried by formalization certificate boundary openness"
  }

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
