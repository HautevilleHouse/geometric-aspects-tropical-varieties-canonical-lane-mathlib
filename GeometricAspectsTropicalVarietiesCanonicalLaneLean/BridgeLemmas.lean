import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalVarietiesAdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TropicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
