import HautevilleHouse.DistributedAlgorithmsCanonicalLaneLean.ConsensusProtocolObjects

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure LogEntry where
  term : Nat
  index : Nat
  command : String

structure RaftState where
  currentTerm : Nat
  votedFor : Option Nat
  log : List LogEntry
  commitIndex : Nat
  lastApplied : Nat

def appendEntries (state : RaftState) (prevLogIndex prevLogTerm : Nat) (entries : List LogEntry) (leaderCommit : Nat) : RaftState :=
  { state with
    log := state.log ++ entries,
    commitIndex := min leaderCommit (state.log.length + entries.length - 1) }

def requestVote (state : RaftState) (candidateId : Nat) (lastLogIndex lastLogTerm : Nat) : Bool :=
  (state.votedFor.isNone ∨ state.votedFor = some candidateId) ∧
  (lastLogTerm > (state.log.getLast? 0).map (·.term) |>.getD 0) ∨
  (lastLogTerm = (state.log.getLast? 0).map (·.term) |>.getD 0 ∧ lastLogIndex ≥ state.log.length - 1)

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse
