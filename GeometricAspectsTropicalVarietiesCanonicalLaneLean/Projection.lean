import GeometricAspectsTropicalVarietiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def tropicalProjection : Projection TropicalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem tropical_projection_idempotent (x : TropicalEndgameState) :
    tropicalProjection.toFun (tropicalProjection.toFun x) = tropicalProjection.toFun x := by
  exact tropicalProjection.idempotent x

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse