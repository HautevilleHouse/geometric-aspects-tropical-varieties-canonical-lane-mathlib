import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalCurve (V : TropicalVariety) where
  curve : Set (ℝ^n)
  genus : ℕ
  bidegree : List (ℤ × ℤ)
  smooth : Prop

def tropicalCurveClosed (C : TropicalCurve V) : Prop :=
  C.smooth ∧ C.genus ≥ 0

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse