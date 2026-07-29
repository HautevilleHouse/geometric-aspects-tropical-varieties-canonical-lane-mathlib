import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalVariety
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.CapacityDimension
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalIntersection
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalHodgeTheory
import HautevilleHouse.GeometricAspectsTropicalVarietiesCanonicalLaneLean.TropicalModuli

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TropicalAdmittedObject where
  varietyPackage : TropicalVarietyPackage
  capacityPackage : CapacityDimensionPackage varietyPackage
  intersectionPackage : TropicalIntersectionPackage capacityPackage
  hodgePackage : TropicalHodgeTheoryPackage intersectionPackage
  moduliPackage : TropicalModuliPackage hodgePackage

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TropicalVarietyClosed (A.object.varietyPackage)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    -- Use the evidence for the tropical variety
    have hV : TropicalVarietyEvidence (A.object.varietyPackage) :=
      -- This would be derived from the admissible class
      sorry
    exact tropical_variety_closed_from_evidence (A.object.varietyPackage) hV

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedTropicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tropical_endgame (A : AdmissibleClass) : ConstrainedTropicalClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse