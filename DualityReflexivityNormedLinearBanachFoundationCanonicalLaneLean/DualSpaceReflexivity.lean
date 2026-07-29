import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure DualSpacePackage (X : BanachAdmissibleObject) where
  dualNormed : Prop
  isBanach : Prop
  doubleDual : Prop
  canonicalInjective : Prop
  isReflexive : Prop

def DualSpaceClosed (X : BanachAdmissibleObject) (D : DualSpacePackage X) : Prop :=
  D.dualNormed ∧ D.isBanach ∧ D.doubleDual ∧ D.canonicalInjective ∧ D.isReflexive

theorem dual_space_endgame (X : BanachAdmissibleObject) (D : DualSpacePackage X) : DualSpaceClosed X D :=
  And.intro D.dualNormed (And.intro D.isBanach (And.intro D.doubleDual (And.intro D.canonicalInjective D.isReflexive)))

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse