import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
