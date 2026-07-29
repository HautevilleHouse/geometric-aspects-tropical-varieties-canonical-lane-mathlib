import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

def ConstrainedTropicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tropical_endgame (A : AdmissibleClass) :
    ConstrainedTropicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
