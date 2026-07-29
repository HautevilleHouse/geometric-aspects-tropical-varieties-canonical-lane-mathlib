import GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalCurvePackage

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalGeometryPackage where
  curve : TropicalCurvePackage
  linearSystem : Prop
  degreeFormula : Prop
  rationalFunctionCorrespondence : Prop

def TropicalGeometryClosed (G : TropicalGeometryPackage) : Prop :=
  G.linearSystem ∧ G.degreeFormula ∧ G.rationalFunctionCorrespondence

theorem tropical_geometry_closed_from_evidence
    (G : TropicalGeometryPackage) (lin : G.linearSystem)
    (deg : G.degreeFormula) (rat : G.rationalFunctionCorrespondence) :
    TropicalGeometryClosed G :=
  And.intro lin (And.intro deg rat)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
