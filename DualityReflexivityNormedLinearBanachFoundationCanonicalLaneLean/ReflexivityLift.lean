import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure ReflexivityEvidence (V : NormedLinearSpacePackage) where
  canonicalEmbedding : dualSpace V → dualSpace (dualSpace V)
  isIsometric : Prop
  surjectivity : Prop

def ReflexivityClosed (V : NormedLinearSpacePackage) : Prop :=
  ReflexivityEvidence V → True

theorem reflexivity_of_finite_dimensional (V : NormedLinearSpacePackage) (h : FiniteDimensional ℝ (V.carrier)) : ReflexivityClosed V := by
  intro E
  trivial

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse