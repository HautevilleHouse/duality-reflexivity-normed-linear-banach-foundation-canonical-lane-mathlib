import DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualityReflexivityNormedLinearBanachFoundationCanonicalLaneLean
end HautevilleHouse