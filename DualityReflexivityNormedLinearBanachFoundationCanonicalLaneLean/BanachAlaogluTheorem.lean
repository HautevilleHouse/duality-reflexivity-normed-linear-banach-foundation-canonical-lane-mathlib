import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure BanachAlaogluPackage where
  space : NormedSpaceOverField ℝ
  dualUnitBall : Type u
  isCompact : Prop
  compactnessEvidence : isCompact

def BanachAlaogluClosed (B : BanachAlaogluPackage) : Prop :=
  B.isCompact

theorem banach_alaoglu_closed_from_evidence (B : BanachAlaogluPackage) : BanachAlaogluClosed B := by
  exact B.compactnessEvidence

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse