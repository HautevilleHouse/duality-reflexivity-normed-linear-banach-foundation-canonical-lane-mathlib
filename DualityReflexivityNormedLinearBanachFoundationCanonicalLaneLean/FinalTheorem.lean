import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

def ConstrainedDualityReflexivityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_reflexivity_endgame (A : AdmissibleClass) :
    ConstrainedDualityReflexivityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse