import HautevilleHouse.BiochemistryGlycobiologyCanonicalLaneLean.GlycobiologyAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

def ConstrainedGlycobiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_glycobiology_endgame (A : AdmissibleClass) :
    ConstrainedGlycobiologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse
