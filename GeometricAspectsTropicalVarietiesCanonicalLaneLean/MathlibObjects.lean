import GeometricAspectsTropicalVarietiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TropicalVariety where
  carrier : Type
  topology : TopologicalSpace carrier
  structureSheaf : Type
  tropicalStructure : Prop

structure TropicalAdmittedObject where
  variety : TropicalVariety
  compact : Prop
  balancedCondition : Prop
  intersectionTheory : Prop
  tropicalSpace : Type
  spaceTopology : TopologicalSpace tropicalSpace
  homeomorphicToTropical : Prop
  conclusion : homeomorphicToTropical

structure TropicalEndgameState where
  object : TropicalAdmittedObject

def TropicalWitnessClosed (O : TropicalAdmittedObject) : Prop :=
  O.homeomorphicToTropical

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse