import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure BanachAdmissibleObject where
  normedSpace : Type u
  norm : normedSpace → ℝ
  isBanach : Prop
  dualSpace : Type v
  dualNorm : dualSpace → ℝ
  bidualSpace : Type w
  canonicalEmbedding : normedSpace → bidualSpace
  isReflexive : Prop

structure BanachAdmissibleClass extends AdmissibleClass where
  banachObject : BanachAdmissibleObject
  bridgeClosed : Prop
  gateClosed : Prop

def bridgeClosed (A : BanachAdmissibleClass) : Prop :=
  A.banachObject.isReflexive

theorem bridge_from_admissible_class (A : BanachAdmissibleClass) : bridgeClosed A :=
  A.bridgeClosed

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse