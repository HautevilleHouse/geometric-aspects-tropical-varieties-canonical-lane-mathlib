import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  polyhedralStructure : Prop
  tropicalVariety : Prop
  conclusion : tropicalVariety

structure AdmissibleClass where
  object : TropicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TropicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
