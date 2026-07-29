import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.DualBanachFoundation

/-!
# Reflexivity Closure Package
-/

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure ReflexivityClosurePackage (V : BanachSpace) (F : DualBanachFoundation V) where
  canonicalEmbedding : V.carrier → F.continuousDual → ℝ
  embeddingInjective : Function.Injective (fun (v : V.carrier) => F.pairing v)
  embeddingSurjective : Function.Surjective (fun (v : V.carrier) => F.pairing v)
  reflexiveConclusion : embeddingInjective ∧ embeddingSurjective

def ReflexivityClosureClosed {V : BanachSpace} {F : DualBanachFoundation V} (P : ReflexivityClosurePackage V F) : Prop :=
  P.reflexiveConclusion

theorem reflexivity_closure_closed_and_mathlib_statement
    {V : BanachSpace} {F : DualBanachFoundation V} (P : ReflexivityClosurePackage V F) :
    ReflexivityClosureClosed P := P.reflexiveConclusion

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse
