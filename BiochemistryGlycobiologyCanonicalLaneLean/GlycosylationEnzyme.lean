import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycosylationEnzymePackage where
  enzymeType : Prop
  substrateSpecificity : Prop
  catalyticMechanism : Prop
  kineticParameters : Prop
  localization : Prop

structure GlycosylationEnzymeEvidence (E : GlycosylationEnzymePackage) where
  enzymeTypeClosed : E.enzymeType
  substrateSpecificityClosed : E.substrateSpecificity
  catalyticMechanismClosed : E.catalyticMechanism
  kineticParametersClosed : E.kineticParameters
  localizationClosed : E.localization

def GlycosylationEnzymeClosed (E : GlycosylationEnzymePackage) : Prop :=
  E.enzymeType ∧ E.substrateSpecificity ∧ E.catalyticMechanism ∧ E.kineticParameters ∧ E.localization

theorem glycosylation_enzyme_closed_from_evidence (E : GlycosylationEnzymePackage) (Ev : GlycosylationEnzymeEvidence E) : GlycosylationEnzymeClosed E := by
  exact And.intro Ev.enzymeTypeClosed
    (And.intro Ev.substrateSpecificityClosed
      (And.intro Ev.catalyticMechanismClosed
        (And.intro Ev.kineticParametersClosed Ev.localizationClosed)))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse