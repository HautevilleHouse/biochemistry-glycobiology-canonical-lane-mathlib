import HautevilleHouse.BiochemistryGlycobiologyCanonicalLaneLean.LectinBinding

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycosylationPathwayPackage where
  enzymeCascadeModeled : Prop
  intermediateIdentification : Prop
  fluxBalanced : Prop
  regulationMechanism : Prop

structure GlycosylationPathwayEvidence (G : GlycosylationPathwayPackage) where
  enzymeCascadeModeledClosed : G.enzymeCascadeModeled
  intermediateIdentificationClosed : G.intermediateIdentification
  fluxBalancedClosed : G.fluxBalanced
  regulationMechanismClosed : G.regulationMechanism

def GlycosylationPathwayClosed (G : GlycosylationPathwayPackage) : Prop :=
  G.enzymeCascadeModeled ∧ G.intermediateIdentification ∧
  G.fluxBalanced ∧ G.regulationMechanism

theorem glycosylation_pathway_closed_from_evidence (G : GlycosylationPathwayPackage)
    (E : GlycosylationPathwayEvidence G) : GlycosylationPathwayClosed G := by
  exact And.intro E.enzymeCascadeModeledClosed
    (And.intro E.intermediateIdentificationClosed
      (And.intro E.fluxBalancedClosed E.regulationMechanismClosed))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse