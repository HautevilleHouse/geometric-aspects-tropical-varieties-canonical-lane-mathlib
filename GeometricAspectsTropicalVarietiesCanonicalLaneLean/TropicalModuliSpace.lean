import GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalFanosTheorem

/-!
# Tropical Moduli Space Package
-/

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalModuliPackage {T : TropicalCurvesPackage} {F : T.stableIntersection} {Fano : TropicalFanoPackage F} where
  moduliSpaceType : Type u
  compactification : Prop
  stackStructure : Prop
  universalFamily : Prop

structure TropicalModuliEvidence {T : TropicalCurvesPackage} {F : T.stableIntersection} {Fano : TropicalFanoPackage F} (M : TropicalModuliPackage Fano) where
  compactificationClosed : M.compactification
  stackStructureClosed : M.stackStructure
  universalFamilyClosed : M.universalFamily

def TropicalModuliClosed {T : TropicalCurvesPackage} {F : T.stableIntersection} {Fano : TropicalFanoPackage F} (M : TropicalModuliPackage Fano) : Prop :=
  M.compactification ∧ M.stackStructure ∧ M.universalFamily

theorem tropical_moduli_closed_from_evidence {T : TropicalCurvesPackage} {F : T.stableIntersection} {Fano : TropicalFanoPackage F} (M : TropicalModuliPackage Fano) (E : TropicalModuliEvidence M) :
    TropicalModuliClosed M := by
  exact And.intro E.compactificationClosed (And.intro E.stackStructureClosed E.universalFamilyClosed)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse