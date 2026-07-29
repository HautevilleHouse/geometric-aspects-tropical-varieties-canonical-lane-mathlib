import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalVarietiesAdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalVarietyPackage where
  underlyingSet : Type u
  topology : TopologicalSpace underlyingSet
  polyhedralComplex : Prop
  tropicalStructure : Prop
  balancedCondition : Prop

def TropicalWitnessClosed (O : TropicalAdmittedObject) : Prop :=
  O.tropicalVariety

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
