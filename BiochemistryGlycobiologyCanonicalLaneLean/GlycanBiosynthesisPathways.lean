import BiochemistryGlycobiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycanBiosynthesisPathwaysPackage (Sys : GlycobiologySystem) where
  pathwayEnzymes : Type
  substrateSpecificity : Prop
  fluxRegulation : Prop
  productDiversity : Prop

structure GlycanBiosynthesisPathwaysEvidence {Sys : GlycobiologySystem}
    (P : GlycanBiosynthesisPathwaysPackage Sys) where
  pathwayEnzymesClosed : P.pathwayEnzymes
  substrateSpecificityClosed : P.substrateSpecificity
  fluxRegulationClosed : P.fluxRegulation
  productDiversityClosed : P.productDiversity

def GlycanBiosynthesisPathwaysClosed {Sys : GlycobiologySystem}
    (P : GlycanBiosynthesisPathwaysPackage Sys) : Prop :=
  P.pathwayEnzymes ∧ P.substrateSpecificity ∧ P.fluxRegulation ∧ P.productDiversity

theorem glycan_biosynthesis_pathways_closed_from_evidence
    {Sys : GlycobiologySystem} (P : GlycanBiosynthesisPathwaysPackage Sys)
    (E : GlycanBiosynthesisPathwaysEvidence P) : GlycanBiosynthesisPathwaysClosed P := by
  exact And.intro E.pathwayEnzymesClosed
    (And.intro E.substrateSpecificityClosed
      (And.intro E.fluxRegulationClosed E.productDiversityClosed))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse