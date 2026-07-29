import GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalCurvesStableIntersection

/-!
# Tropical Fano's Theorem Package
-/

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalFanoPackage {T : TropicalCurvesPackage} (F : T.stableIntersection) where
  fanosInequality : Prop
  bendBreakCondition : Prop
  tropicalFanoVariety : Prop

structure TropicalFanoEvidence {T : TropicalCurvesPackage} {F : T.stableIntersection} (Fano : TropicalFanoPackage F) where
  fanosInequalityClosed : Fano.fanosInequality
  bendBreakConditionClosed : Fano.bendBreakCondition
  tropicalFanoVarietyClosed : Fano.tropicalFanoVariety

def TropicalFanoClosed {T : TropicalCurvesPackage} {F : T.stableIntersection} (Fano : TropicalFanoPackage F) : Prop :=
  Fano.fanosInequality ∧ Fano.bendBreakCondition ∧ Fano.tropicalFanoVariety

theorem tropical_fano_closed_from_evidence {T : TropicalCurvesPackage} {F : T.stableIntersection} (Fano : TropicalFanoPackage F) (E : TropicalFanoEvidence Fano) :
    TropicalFanoClosed Fano := by
  exact And.intro E.fanosInequalityClosed (And.intro E.bendBreakConditionClosed E.tropicalFanoVarietyClosed)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse