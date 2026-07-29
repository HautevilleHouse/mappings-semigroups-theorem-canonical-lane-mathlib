import canonicalLaneMathlib.AdmissibleClass
import MappingsSemigroupsTheoremCanonicalLaneLean.MappingsSemigroupsBridge

namespace HautevilleHouse
namespace MappingsSemigroupsTheoremCanonicalLaneLean

def bridgeClosed (A : MappingsSemigroupsAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : MappingsSemigroupsAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : MappingsSemigroupsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MappingsSemigroupsAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedMappingsSemigroupsClosure (A : MappingsSemigroupsAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mappings_semigroups_endgame (A : MappingsSemigroupsAdmissibleClass) :
    ConstrainedMappingsSemigroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MappingsSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
