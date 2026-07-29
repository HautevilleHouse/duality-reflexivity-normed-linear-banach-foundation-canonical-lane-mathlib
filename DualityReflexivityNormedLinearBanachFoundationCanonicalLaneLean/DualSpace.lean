import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure ContinuousDual (X : BanachSpace) where
  linearForm : X.carrier → ℝ
  bounded : BoundedLinearMap X.carrier ℝ

def dualNormedSpace (X : BanachSpace) : NormedAddCommGroup (ContinuousDual X) :=
  inferInstance

theorem dual_is_banach (X : BanachSpace) : CompleteSpace (ContinuousDual X) :=
  inferInstance

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse
