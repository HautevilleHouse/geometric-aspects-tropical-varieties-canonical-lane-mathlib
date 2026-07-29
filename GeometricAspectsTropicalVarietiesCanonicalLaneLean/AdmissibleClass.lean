import GeometricAspectsTropicalVarietiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure AdmissibleClass where
  object : TropicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TropicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse