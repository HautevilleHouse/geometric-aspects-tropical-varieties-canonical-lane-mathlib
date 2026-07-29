import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalVariety where
  carrier : Set (ℝ^n)
  polyhedralStructure : PolyhedralComplex
  dimension : ℕ
  balancedCondition : Prop

def tropicalVarietyClosed (V : TropicalVariety) : Prop :=
  V.balancedCondition

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse