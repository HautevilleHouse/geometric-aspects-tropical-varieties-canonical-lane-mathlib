import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalCycleClass (V : TropicalVariety) where
  cycleRepresentative : Set (ℝ^n)
  cycleDegree : ℕ
  rationalEquivalence : Prop

def tropicalCycleClassClosed (C : TropicalCycleClass V) : Prop :=
  C.rationalEquivalence ∧ C.cycleDegree ≥ 0

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse