import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure BanachSpaceEvidence (V : NormedLinearSpacePackage) where
  completeness : Prop
  normedAddCommGroup : NormedAddCommGroup V.carrier
  normedSpace : NormedSpace ℝ V.carrier
  normedAddCommGroupCompatible : Prop
  normedSpaceCompatible : Prop

def BanachSpaceClosed (V : NormedLinearSpacePackage) : Prop :=
  Nonempty (BanachSpaceEvidence V)

theorem banach_is_complete_normed_space (V : NormedLinearSpacePackage) (h : BanachSpaceClosed V) : CompleteSpace V.carrier := by
  rcases h with ⟨ev⟩
  exact ev.completeness

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse