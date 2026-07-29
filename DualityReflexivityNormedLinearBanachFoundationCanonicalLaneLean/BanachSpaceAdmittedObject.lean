import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.NormedLinearBanachFoundation

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure TypedBanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  add : carrier → carrier → carrier
  zero : carrier
  smul : ℝ → carrier → carrier

defaultTypedBanachSpace : TypedBanachSpace := sorry

structure BanachAdmittedObject where
  space : TypedBanachSpace
  dualSpaceReflexive : Prop
  conclusion : dualSpaceReflexive

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse