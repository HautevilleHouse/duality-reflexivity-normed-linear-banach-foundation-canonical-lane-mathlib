import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.MathlibObjects

/-!
# Dual Banach Foundation Package
-/

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure DualBanachFoundation (V : BanachSpace) where
  continuousDual : Type
  operatorNorm : continuousDual → ℝ
  normedAddCommGroup : NormedAddCommGroup continuousDual
  pairing : V.carrier → continuousDual → ℝ
  dualIsBanach : BanachIsComplete ({
    carrier := continuousDual,
    norm := operatorNorm,
    normedAddCommGroup := normedAddCommGroup
  } : BanachSpace)

def DualBanachFoundationClosed (V : BanachSpace) (F : DualBanachFoundation V) : Prop :=
  F.dualIsBanach

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse
