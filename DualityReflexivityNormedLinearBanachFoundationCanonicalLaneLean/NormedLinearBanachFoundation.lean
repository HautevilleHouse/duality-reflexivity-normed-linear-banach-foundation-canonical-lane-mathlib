import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.Reflexivity

/-!
# Normed Linear Banach Foundation Package
-/

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure NormedLinearBanachFoundation (V : TypedBanachSpace) (D : DualSpacePackage V) (R : ReflexivityPackage V D) where
  completeness : CompleteSpace V
  normedStructure : NormedSpace ℝ V
  banachSpace : IsBanachSpace V
  closure : FoundationClosed V D R

structure FoundationClosed (V : TypedBanachSpace) (D : DualSpacePackage V) (R : ReflexivityPackage V D) : Prop where
  isClosed : Prop
  evidence : isClosed

defaultFoundationClosed (V : TypedBanachSpace) (D : DualSpacePackage V) (R : ReflexivityPackage V D) : FoundationClosed V D R := sorry

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse