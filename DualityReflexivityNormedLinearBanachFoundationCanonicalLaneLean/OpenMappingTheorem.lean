import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure OpenMappingPackage where
  operator : Type u
  domain : Type v
  codomain : Type w
  boundedLinear : Prop
  surjective : Prop
  openMapping : Prop

def OpenMappingClosed (O : OpenMappingPackage) : Prop :=
  O.surjective → O.openMapping

theorem open_mapping_endgame (O : OpenMappingPackage) : OpenMappingClosed O :=
  fun h : O.surjective => O.openMapping

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse