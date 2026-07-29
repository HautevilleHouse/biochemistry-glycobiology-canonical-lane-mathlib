import BiochemistryGlycobiologyCanonicalLaneLean.GlycobiologyMathlibObjects

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GlycobiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse