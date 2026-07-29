import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure ClockState where
  nodes : List String
  localTime : List (String × Int)
  offsetCorrections : List (String × Int)
  driftRates : List (String × Float)

structure ClockAdmittedObject where
  state : ClockState
  skewBound : Nat
  syncProtocol : String

structure ClockAdmissibleClass extends AdmissibleClass where
  clockObject : ClockAdmittedObject
  convergenceProof : Prop
  stabilityProof : Prop
  accuracyProof : Prop

def bridgeClock (A : ClockAdmissibleClass) : Prop :=
  A.convergenceProof ∧ A.stabilityProof ∧ A.accuracyProof

theorem bridge_from_clock (A : ClockAdmissibleClass) : bridgeClock A :=
  And.intro A.convergenceProof (And.intro A.stabilityProof A.accuracyProof)

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse