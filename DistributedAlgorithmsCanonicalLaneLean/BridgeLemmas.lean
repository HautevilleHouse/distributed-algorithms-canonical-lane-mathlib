import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.protocol A.safetyProperty ∧ Decides A.protocol A.livenessProperty

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.safetyDecidable A.livenessDecidable

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse