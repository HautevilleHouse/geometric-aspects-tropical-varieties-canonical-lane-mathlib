import GeometricAspectsTropicalVarietiesCanonicalLaneLean.RiemannianCurvature

/-!
# Tropical Curves and Stable Intersection Package
-/

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalCurvesPackage where
  curveGenus : ℕ
  balancedCondition : Prop
  stableIntersection : Prop
  intersectionProductDefined : Prop

structure TropicalCurvesEvidence (T : TropicalCurvesPackage) where
  balancedConditionClosed : T.balancedCondition
  stableIntersectionClosed : T.stableIntersection
  intersectionProductDefinedClosed : T.intersectionProductDefined

def TropicalCurvesClosed (T : TropicalCurvesPackage) : Prop :=
  T.balancedCondition ∧ T.stableIntersection ∧ T.intersectionProductDefined

theorem tropical_curves_closed_from_evidence (T : TropicalCurvesPackage) (E : TropicalCurvesEvidence T) :
    TropicalCurvesClosed T := by
  exact And.intro E.balancedConditionClosed (And.intro E.stableIntersectionClosed E.intersectionProductDefinedClosed)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse