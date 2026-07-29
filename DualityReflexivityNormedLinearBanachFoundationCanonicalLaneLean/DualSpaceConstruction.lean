import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure NormedLinearSpacePackage where
  carrier : Type u
  norm : carrier → ℝ
  add : carrier → carrier → carrier
  smul : ℝ → carrier → carrier
  normedSpaceAxioms : Prop

dualSpace : NormedLinearSpacePackage → Type u := λ V => (V.carrier → ℝ)

structure DualSpaceEvidence (V : NormedLinearSpacePackage) where
  dualNormDefined : Prop
  dualNormedSpace : Prop

def DualSpaceClosed (V : NormedLinearSpacePackage) : Prop :=
  let D := dualSpace V
  Nonempty (NormedAddCommGroup D) ∧ Nonempty (NormedSpace ℝ D)

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse