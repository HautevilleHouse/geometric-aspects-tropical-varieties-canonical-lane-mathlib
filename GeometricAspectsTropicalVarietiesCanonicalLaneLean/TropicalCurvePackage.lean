import GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalProjections

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalCurvePackage where
  underlyingGraph : Type
  edgeWeights : Type
  balancedCondition : Prop
  valencyTwoPoints : Prop

def TropicalCurveClosed (C : TropicalCurvePackage) : Prop :=
  C.balancedCondition ∧ C.valencyTwoPoints

theorem tropical_curve_closed_from_evidence
    (C : TropicalCurvePackage) (bal : C.balancedCondition) (val : C.valencyTwoPoints) :
    TropicalCurveClosed C :=
  And.intro bal val

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
