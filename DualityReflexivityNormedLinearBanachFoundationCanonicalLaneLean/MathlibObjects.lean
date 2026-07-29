import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BanachSpace where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier

def BanachIsComplete (V : BanachSpace) : Prop :=
  Metric.complete (normedAddCommGroup := V.normedAddCommGroup)

structure DualBanach (V : BanachSpace) where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  pairing : V.carrier → carrier → ℝ

def ReflexiveBanach (V : BanachSpace) (Vstar : DualBanach V) : Prop :=
  Bijective (fun (v : V.carrier) => (fun (f : Vstar.carrier) => Vstar.pairing v f))

structure BanachAdmittedObject where
  space : BanachSpace
  completeness : BanachIsComplete space
  dual : DualBanach space
  reflexivity : ReflexiveBanach space dual
  conclusion : reflexivity

structure BanachEndgameState where
  object : BanachAdmittedObject

def BanachWitnessClosed (O : BanachAdmittedObject) : Prop :=
  O.reflexivity

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse
