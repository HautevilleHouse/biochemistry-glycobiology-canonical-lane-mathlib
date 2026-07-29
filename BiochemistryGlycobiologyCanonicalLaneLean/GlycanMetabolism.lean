import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycanMetabolismPackage where
  biosynthesisPathway : Prop
  degradationPathway : Prop
  energyInvestment : Prop
  regulationMechanism : Prop
  compartmentalization : Prop

structure GlycanMetabolismEvidence (M : GlycanMetabolismPackage) where
  biosynthesisPathwayClosed : M.biosynthesisPathway
  degradationPathwayClosed : M.degradationPathway
  energyInvestmentClosed : M.energyInvestment
  regulationMechanismClosed : M.regulationMechanism
  compartmentalizationClosed : M.compartmentalization

def GlycanMetabolismClosed (M : GlycanMetabolismPackage) : Prop :=
  M.biosynthesisPathway ∧ M.degradationPathway ∧ M.energyInvestment ∧ M.regulationMechanism ∧ M.compartmentalization

theorem glycan_metabolism_closed_from_evidence (M : GlycanMetabolismPackage) (Ev : GlycanMetabolismEvidence M) : GlycanMetabolismClosed M := by
  exact And.intro Ev.biosynthesisPathwayClosed
    (And.intro Ev.degradationPathwayClosed
      (And.intro Ev.energyInvestmentClosed
        (And.intro Ev.regulationMechanismClosed Ev.compartmentalizationClosed)))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse