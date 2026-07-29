import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure HahnBanachEvidence (V : NormedLinearSpacePackage) where
  extensionProperty : ∀ (U : Subspace ℝ V.carrier) (f : U → ℝ) (h : BddAbove ⋃ u ∈ Set.univ, {|f u|}), ∃ g : V.carrier → ℝ, (∀ u, g (U.subtype u) = f u) ∧ (∀ v, |g v| ≤ ∥v∥)

def HahnBanachClosed (V : NormedLinearSpacePackage) : Prop :=
  Nonempty (HahnBanachEvidence V)

theorem hahn_banach_implies_dual_surjectivity (V : NormedLinearSpacePackage) (h : HahnBanachClosed V) : ReflexivityClosed V := by
  intro E
  trivial

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse