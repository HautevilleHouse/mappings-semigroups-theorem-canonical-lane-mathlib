import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.SemigroupAction
import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MappingsSemigroupsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

def ConstrainedMappingsSemigroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mappings_semigroup_endgame (A : AdmissibleClass) :
    ConstrainedMappingsSemigroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
