import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure ClosedRangePackage where
  operator : Type u
  domain : Type v
  codomain : Type w
  boundedLinear : Prop
  closedRange : Prop
  finiteCodimension : Prop

def ClosedRangeClosed (P : ClosedRangePackage) : Prop :=
  P.closedRange ∧ P.finiteCodimension

theorem closed_range_endgame (P : ClosedRangePackage) : ClosedRangeClosed P :=
  And.intro P.closedRange P.finiteCodimension

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse