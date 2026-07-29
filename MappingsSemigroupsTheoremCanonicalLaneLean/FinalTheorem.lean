import canonicalLaneMathlib.AdmissibleClass
import MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroupsClosure

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

def ConstrainedMappingsSemigroupsClosure (A : MappingsSemigroupsAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mappings_semigroups_endgame (A : MappingsSemigroupsAdmissibleClass) :
    ConstrainedMappingsSemigroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
