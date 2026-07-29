import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalVarietyStructure

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalIntersectionPackage where
  variety1 : TropicalVarietyPackage
  variety2 : TropicalVarietyPackage
  intersectionCycle : Prop
  stableIntersection : Prop
  balancingConditionPreserved : Prop

def TropicalIntersectionClosed (I : TropicalIntersectionPackage) : Prop :=
  I.intersectionCycle ∧ I.stableIntersection ∧ I.balancingConditionPreserved

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
