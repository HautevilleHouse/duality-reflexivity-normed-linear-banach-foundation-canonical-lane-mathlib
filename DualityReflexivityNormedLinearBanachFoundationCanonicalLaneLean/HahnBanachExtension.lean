import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

structure HahnBanachExtensionProperty (X : BanachSpace) where
  extensionExists : ∀ (Y : Subspace X.carrier) (f : ContinuousDual (SubspaceBanach Y)),
    ∃ (F : ContinuousDual X), ∀ y : Y, F.linearForm y = f.linearForm y ∧ ‖F‖ = ‖f‖

theorem hahn_banach_holds (X : BanachSpace) : HahnBanachExtensionProperty X :=
  by
    refine {
      extensionExists := ?_
    }
    intro Y f
    -- Use the analytic Hahn-Banach theorem from mathlib
    have h := exists_extension_norm_eq (Submodule.subtype (Y : Submodule X.carrier)) f
    rcases h with ⟨F, hF⟩
    refine ⟨F, ?_
    ⟩
    intro y
    have h_eq : F.linearForm y = f.linearForm y := by
      simpa using hF.1 y
    have h_norm : ‖F‖ = ‖f‖ := hF.2
    exact ⟨h_eq, h_norm⟩

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse