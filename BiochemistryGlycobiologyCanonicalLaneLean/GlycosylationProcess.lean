import BiochemistryGlycobiologyCanonicalLaneLean.GlycanBiosynthesisPathways

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycosylationProcessPackage {Sys : GlycobiologySystem}
    (P : GlycanBiosynthesisPathwaysPackage Sys) where
  glycosylationSites : Type
  glycanAttachment : Prop
  foldingCoupling : Prop
  qualityControl : Prop

structure GlycosylationProcessEvidence {Sys : GlycobiologySystem}
    {P : GlycanBiosynthesisPathwaysPackage Sys}
    (G : GlycosylationProcessPackage P) where
  glycosylationSitesClosed : G.glycosylationSites
  glycanAttachmentClosed : G.glycanAttachment
  foldingCouplingClosed : G.foldingCoupling
  qualityControlClosed : G.qualityControl

def GlycosylationProcessClosed {Sys : GlycobiologySystem}
    {P : GlycanBiosynthesisPathwaysPackage Sys}
    (G : GlycosylationProcessPackage P) : Prop :=
  G.glycosylationSites ∧ G.glycanAttachment ∧ G.foldingCoupling ∧ G.qualityControl

theorem glycosylation_process_closed_from_evidence
    {Sys : GlycobiologySystem} {P : GlycanBiosynthesisPathwaysPackage Sys}
    (G : GlycosylationProcessPackage P) (E : GlycosylationProcessEvidence G) :
    GlycosylationProcessClosed G := by
  exact And.intro E.glycosylationSitesClosed
    (And.intro E.glycanAttachmentClosed
      (And.intro E.foldingCouplingClosed E.qualityControlClosed))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse