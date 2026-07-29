import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.DualSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure ReflexiveBanachSpace (X : BanachSpace) where
  bijectiveCanonicalEmbedding : X.carrier ≃ₗ[ℝ] (ContinuousDual (ContinuousDual X)).carrier
  isometry : ∀ x : X.carrier, ‖bijectiveCanonicalEmbedding x‖ = ‖x‖

theorem reflexive_banach_is_complete (X : BanachSpace) (R : ReflexiveBanachSpace X) : CompleteSpace X :=
  X.complete

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse
