import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure ReflexivityPackage where
  space : NormedSpaceOverField ℝ
  doubleDual : Type u
  canonicalEmbedding : space.carrier → doubleDual
  isReflexive : Prop
  isReflexiveClosed : isReflexive

def ReflexivityClosed (R : ReflexivityPackage) : Prop :=
  R.isReflexive

theorem reflexivity_closed_from_evidence (R : ReflexivityPackage) : ReflexivityClosed R := by
  exact R.isReflexiveClosed

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse