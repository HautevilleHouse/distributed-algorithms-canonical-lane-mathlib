import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure ConsensusState where
  nodes : List String
  proposed : List (String × Int)
  decided : List (String × Int)
  faultTolerance : Nat
  round : Nat

structure ConsensusAdmittedObject where
  state : ConsensusState
  faultBound : Nat
  phase : String

structure ConsensusAdmissibleClass extends AdmissibleClass where
  admitted : ConsensusAdmittedObject
  roundLimit : Nat
  terminationProof : Prop
  agreementProof : Prop

def bridgeConsensus (A : ConsensusAdmissibleClass) : Prop :=
  A.terminationProof ∧ A.agreementProof

theorem bridge_from_consensus (A : ConsensusAdmissibleClass) : bridgeConsensus A :=
  And.intro A.terminationProof A.agreementProof

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse