import HautevilleHouse.DistributedAlgorithmsCanonicalLaneLean.ConsensusBridge

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

def ConstrainedConsensusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_consensus_endgame (A : AdmissibleClass) : ConstrainedConsensusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse
