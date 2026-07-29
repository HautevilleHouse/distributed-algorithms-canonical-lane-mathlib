import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  admissibleClosureStatement : String
  carriedRemainder : String
deriving Repr, DecidableEq

def theoremStatement : TheoremStatement :=
  { sourceKey := "distributed-algorithms-canonical-lane",
    theoremName := "Distributed Consensus Closure",
    theoremObject := "Consensus in asynchronous message-passing with up to f crash failures",
    classicalBoundary := "FLP impossibility result: no deterministic protocol solves consensus in asynchronous systems with one crash failure",
    admissibleClosureStatement := "admissible closure: safety and liveness of consensus under partial synchrony and failure detectors",
    carriedRemainder := "FLP impossibility remains open for purely asynchronous deterministic model" }

end DistributedAlgorithmsCanonicalLaneLean
end HautevilleHouse