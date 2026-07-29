import HautevilleHouse.DistributedAlgorithmsCanonicalLaneLean.ConsensusProtocolObjects

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure FaultToleranceLayer where
  maxFaults : Nat
  synchrony : String -- "synchronous", "asynchronous", "partial"
  linkReliability : String -- "reliable", "fair-lossy"

def crashFault (p : Process) : Prop :=
  ¬ p.decided

def byzantineFault (p : Process) : Prop :=
  ∃ v1 v2, v1 ≠ v2 ∧ p.decidedValue = some v1 ∧ p.initialValue = v2

def FLPImpossible (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem flp_impossibility (A : AdmissibleClass) (h : A.lane.solver.accepts [] = true) :
  ∃ (procs : List Process), ¬ (allDecided procs ∧ sameDecision procs) := by
  sorry

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse
