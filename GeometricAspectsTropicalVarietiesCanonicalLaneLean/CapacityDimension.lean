import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalVariety

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure CapacityDimensionPackage (V : TropicalVarietyPackage) where
  rationalPolyhedralComplexDimension : Prop
  multiplicityData : Prop
  balancingWeights : Prop

def CapacityDimensionClosed {V : TropicalVarietyPackage} (C : CapacityDimensionPackage V) : Prop :=
  C.rationalPolyhedralComplexDimension ∧ C.multiplicityData ∧ C.balancingWeights

structure CapacityDimensionEvidence {V : TropicalVarietyPackage} (C : CapacityDimensionPackage V) where
  rationalPolyhedralComplexDimensionClosed : C.rationalPolyhedralComplexDimension
  multiplicityDataClosed : C.multiplicityData
  balancingWeightsClosed : C.balancingWeights

theorem capacity_dimension_closed_from_evidence {V : TropicalVarietyPackage} (C : CapacityDimensionPackage V) (E : CapacityDimensionEvidence C) : CapacityDimensionClosed C :=
  And.intro E.rationalPolyhedralComplexDimensionClosed (And.intro E.multiplicityDataClosed E.balancingWeightsClosed)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse