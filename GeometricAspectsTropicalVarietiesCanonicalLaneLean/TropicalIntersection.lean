import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalVariety
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.CapacityDimension

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalIntersectionPackage {V : TropicalVarietyPackage} (C : CapacityDimensionPackage V) where
  intersectionNumber : Prop
  stableIntersection : Prop
  intersectionCohomology : Prop

def TropicalIntersectionClosed {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} (I : TropicalIntersectionPackage C) : Prop :=
  I.intersectionNumber ∧ I.stableIntersection ∧ I.intersectionCohomology

structure TropicalIntersectionEvidence {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} (I : TropicalIntersectionPackage C) where
  intersectionNumberClosed : I.intersectionNumber
  stableIntersectionClosed : I.stableIntersection
  intersectionCohomologyClosed : I.intersectionCohomology

theorem tropical_intersection_closed_from_evidence {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} (I : TropicalIntersectionPackage C) (E : TropicalIntersectionEvidence I) : TropicalIntersectionClosed I :=
  And.intro E.intersectionNumberClosed (And.intro E.stableIntersectionClosed E.intersectionCohomologyClosed)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse