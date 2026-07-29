import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure PaxosState where
  nodes : List String
  proposerId : Nat
  proposalNumber : Nat
  promised : List (String × Nat)
  accepted : List (String × Nat × String)
  leaders : List String

structure PaxosAdmittedObject where
  state : PaxosState
  majorityThreshold : Nat
  leaderElection : String

structure PaxosAdmissibleClass extends AdmissibleClass where
  paxosObject : PaxosAdmittedObject
  quorumProof : Prop
  safetyProof : Prop
  livenessProof : Prop

def bridgePaxos (A : PaxosAdmissibleClass) : Prop :=
  A.quorumProof ∧ A.safetyProof ∧ A.livenessProof

theorem bridge_from_paxos (A : PaxosAdmissibleClass) : bridgePaxos A :=
  And.intro A.quorumProof (And.intro A.safetyProof A.livenessProof)

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse