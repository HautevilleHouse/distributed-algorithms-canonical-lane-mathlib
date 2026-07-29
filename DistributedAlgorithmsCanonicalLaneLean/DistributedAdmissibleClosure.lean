import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | ConsensusAdmissibleClass c => bridgeConsensus c
  | PaxosAdmissibleClass p => bridgePaxos p
  | ByzantineAdmissibleClass b => bridgeByzantine b
  | ClockAdmissibleClass cl => bridgeClock cl
  | _ => False

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedDistributedAlgorithmsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem distributed_algorithms_endgame (A : AdmissibleClass) : ConstrainedDistributedAlgorithmsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse