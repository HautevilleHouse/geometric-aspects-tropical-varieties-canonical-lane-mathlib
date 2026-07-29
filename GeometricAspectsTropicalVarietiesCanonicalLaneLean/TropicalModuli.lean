import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalHodgeTheory

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalModuliPackage {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} {I : TropicalIntersectionPackage C} (H : TropicalHodgeTheoryPackage I) where
  moduliSpace : Type u
  periodMap : Prop
  teichmuellerSpace : Prop
  tropicalShimuraVariety : Prop

def TropicalModuliClosed {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} {I : TropicalIntersectionPackage C} {H : TropicalHodgeTheoryPackage I} (M : TropicalModuliPackage H) : Prop :=
  M.moduliSpace ≃ M.moduliSpace ∧ M.periodMap ∧ M.teichmuellerSpace ∧ M.tropicalShimuraVariety

structure TropicalModuliEvidence {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} {I : TropicalIntersectionPackage C} {H : TropicalHodgeTheoryPackage I} (M : TropicalModuliPackage H) where
  periodMapClosed : M.periodMap
  teichmuellerSpaceClosed : M.teichmuellerSpace
  tropicalShimuraVarietyClosed : M.tropicalShimuraVariety

theorem tropical_moduli_closed_from_evidence {V : TropicalVarietyPackage} {C : CapacityDimensionPackage V} {I : TropicalIntersectionPackage C} {H : TropicalHodgeTheoryPackage I} (M : TropicalModuliPackage H) (E : TropicalModuliEvidence M) : TropicalModuliClosed M :=
  And.intro E.periodMapClosed (And.intro E.teichmuellerSpaceClosed E.tropicalShimuraVarietyClosed)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse