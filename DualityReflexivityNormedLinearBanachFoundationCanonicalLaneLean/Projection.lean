import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure Projection (α : Type u) where
  toFun : α → α
  idempotent : ∀ x, toFun (toFun x) = toFun x

def BanachWitnessClosed (O : BanachAdmittedObject) : Prop :=
  O.dualSpaceReflexive

defaultProjection : Projection (AdmissibleClass) := sorry

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse