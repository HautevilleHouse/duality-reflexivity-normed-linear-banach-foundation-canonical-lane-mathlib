import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.ReviewerBridge
import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  dualityReflexivityConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  dualityReflexivityConstrainedStatement := "Every normed linear space whose dual is reflexive is itself reflexive; the canonical embedding into its bidual is an isometric isomorphism.",
  certificateLane := "duality_reflexivity_constrained",
  carriedRemainder := "The classic Hahn-Banach theorem and open-mapping theorem are needed for the full proof; they remain as carried classical prerequisites."
}

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse
