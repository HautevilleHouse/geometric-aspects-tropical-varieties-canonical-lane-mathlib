import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalDivisor (V : TropicalVariety) where
  support : Set (ℝ^n)
  weights : ℝ^n → ℝ
  amplenessCondition : Prop

def tropicalDivisorClosed (D : TropicalDivisor V) : Prop :=
  D.amplenessCondition

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse