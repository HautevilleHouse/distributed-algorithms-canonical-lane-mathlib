import HautevilleHouse.DistributedAlgorithmsCanonicalLaneLean.FaultToleranceLayers

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.lane.admissibleForAll

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.lane.admissibilityProof

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse
