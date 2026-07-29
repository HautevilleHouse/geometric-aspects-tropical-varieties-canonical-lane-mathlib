import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalVarietyPackage where
  carrierSet : Type u
  tropicalStructure : carrierSet -> carrierSet -> CarrierSet
  tropicalAddition : carrierSet -> carrierSet -> carrierSet
  tropicalMultiplication : carrierSet -> carrierSet -> carrierSet
  balanceCondition : Prop
  dimension : Nat
  irreducible : Prop

structure TropicalVarietyEvidence (V : TropicalVarietyPackage) where
  balanceConditionClosed : V.balanceCondition
  irreducibleClosed : V.irreducible

def TropicalVarietyClosed (V : TropicalVarietyPackage) : Prop :=
  V.balanceCondition ∧ V.irreducible

theorem tropical_variety_closed_from_evidence (V : TropicalVarietyPackage) (E : TropicalVarietyEvidence V) : TropicalVarietyClosed V :=
  And.intro E.balanceConditionClosed E.irreducibleClosed

end GeometricAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse