import HautevilleHouse.DistributedAlgorithmsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure Process where
  id : Nat
  initialValue : Nat
  decidedValue : Option Nat

def Process.decided (p : Process) : Prop :=
  p.decidedValue.isSome

structure Message where
  sender : Nat
  round : Nat
  value : Nat

def allDecided (procs : List Process) : Prop :=
  ∀ p ∈ procs, p.decided

def sameDecision (procs : List Process) : Prop :=
  ∃ v, ∀ p ∈ procs, p.decidedValue = some v

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse
