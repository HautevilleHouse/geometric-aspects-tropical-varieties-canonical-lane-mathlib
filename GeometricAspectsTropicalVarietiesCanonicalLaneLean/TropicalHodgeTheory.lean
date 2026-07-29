import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalIntersection

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalHodgeTheoryPackage {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} (I : TropicalIntersectionPackage C) where
  hodgeDecomposition : Prop
  hodgeDiamond : Prop
  kahlerPackage : Prop

def TropicalHodgeTheoryClosed {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} {I : TropicalIntersectionPackage C} (H : TropicalHodgeTheoryPackage I) : Prop :=
  H.hodgeDecomposition ∧ H.hodgeDiamond ∧ H.kahlerPackage

structure TropicalHodgeTheoryEvidence {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} {I : TropicalIntersectionPackage C} (H : TropicalHodgeTheoryPackage I) where
  hodgeDecompositionClosed : H.hodgeDecomposition
  hodgeDiamondClosed : H.hodgeDiamond
  kahlerPackageClosed : H.kahlerPackage

theorem tropical_hodge_theory_closed_from_evidence {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} {I : TropicalIntersectionPackage C} (H : TropicalHodgeTheoryPackage I) (E : TropicalHodgeTheoryEvidence H) : TropicalHodgeTheoryClosed H :=
  And.intro E.hodgeDecompositionClosed (And.intro E.hodgeDiamondClosed E.kahlerPackageClosed)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse