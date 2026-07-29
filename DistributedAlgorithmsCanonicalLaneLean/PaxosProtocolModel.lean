import HautevilleHouse.DistributedAlgorithmsCanonicalLaneLean.ConsensusProtocolObjects

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure Ballot where
  number : Nat
  leader : Nat

structure Promise where
  ballot : Ballot
  lastAcceptedValue : Option Nat

structure Accept where
  ballot : Ballot
  value : Nat

structure PaxosState where
  currentBallot : Ballot
  acceptors : List Process
  promises : List Promise
  accepts : List Accept
  decidedValue : Option Nat

def PaxosRound (state : PaxosState) (newBallot : Ballot) : PaxosState :=
  { state with
    currentBallot := newBallot,
    promises := [],
    accepts := [] }

def addPromise (state : PaxosState) (p : Promise) : PaxosState :=
  { state with promises := p :: state.promises }

def addAccept (state : PaxosState) (a : Accept) : PaxosState :=
  { state with accepts := a :: state.accepts }

def PaxosDecide (state : PaxosState) (v : Nat) : PaxosState :=
  { state with decidedValue := some v }

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse
