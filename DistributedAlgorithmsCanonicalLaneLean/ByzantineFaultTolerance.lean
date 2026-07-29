import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure ByzantineState where
  nodes : List String
  messages : List (String × String × String)
  faultyNodes : List String
  round : Nat

structure ByzantineAdmittedObject where
  state : ByzantineState
  faultThreshold : Nat
  protocol : String

structure ByzantineAdmissibleClass extends AdmissibleClass where
  byzantineObject : ByzantineAdmittedObject
  agreementProof : Prop
  validityProof : Prop
  faultBoundProof : Prop

def bridgeByzantine (A : ByzantineAdmissibleClass) : Prop :=
  A.agreementProof ∧ A.validityProof ∧ A.faultBoundProof

theorem bridge_from_byzantine (A : ByzantineAdmissibleClass) : bridgeByzantine A :=
  And.intro A.agreementProof (And.intro A.validityProof A.faultBoundProof)

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse