import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure AdmissibleClass where
  process : DistributedProcess
  network : NetworkModel
  protocol : Protocol
  safetyProperty : SafetyProperty
  livenessProperty : LivenessProperty
  safetyDecidable : Decides protocol safetyProperty
  livenessDecidable : Decides protocol livenessProperty
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.protocol A.safetyProperty ∧
  Decides A.protocol A.livenessProperty ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse