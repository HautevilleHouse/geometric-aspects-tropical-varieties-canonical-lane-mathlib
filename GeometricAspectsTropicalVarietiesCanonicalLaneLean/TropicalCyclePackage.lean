import GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalVarietyStructure

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalCyclePackage where
  cycleSpace : Type u
  topology : TopologicalSpace cycleSpace
  dimension : Nat
  weightFunction : cycleSpace → ℤ
  balancedCondition : Prop
  supportInVariety : TropicalVarietyStructure → Prop
  cycleClosed : Prop

def TropicalCycleClosed (C : TropicalCyclePackage) : Prop :=
  C.balancedCondition ∧ C.cycleClosed

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
