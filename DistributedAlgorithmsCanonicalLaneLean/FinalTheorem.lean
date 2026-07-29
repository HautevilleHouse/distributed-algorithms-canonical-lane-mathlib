import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

def ConstrainedDistributedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distributed_endgame (A : AdmissibleClass) :
    ConstrainedDistributedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse