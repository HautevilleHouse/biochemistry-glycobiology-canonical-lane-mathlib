import BiochemistryGlycobiologyCanonicalLaneLean.GlycosylationProcess

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure LectinGlycanBindingPackage {Sys : GlycobiologySystem}
    {P : GlycanBiosynthesisPathwaysPackage Sys}
    {G : GlycosylationProcessPackage P} where
  lectinRepertoire : Type
  bindingSpecificity : Prop
  avidityEffects : Prop
  signalingDownstream : Prop

structure LectinGlycanBindingEvidence {Sys : GlycobiologySystem}
    {P : GlycanBiosynthesisPathwaysPackage Sys}
    {G : GlycosylationProcessPackage P}
    (L : LectinGlycanBindingPackage G) where
  lectinRepertoireClosed : L.lectinRepertoire
  bindingSpecificityClosed : L.bindingSpecificity
  avidityEffectsClosed : L.avidityEffects
  signalingDownstreamClosed : L.signalingDownstream

def LectinGlycanBindingClosed {Sys : GlycobiologySystem}
    {P : GlycanBiosynthesisPathwaysPackage Sys}
    {G : GlycosylationProcessPackage P}
    (L : LectinGlycanBindingPackage G) : Prop :=
  L.lectinRepertoire ∧ L.bindingSpecificity ∧ L.avidityEffects ∧ L.signalingDownstream

theorem lectin_glycan_binding_closed_from_evidence
    {Sys : GlycobiologySystem} {P : GlycanBiosynthesisPathwaysPackage Sys}
    {G : GlycosylationProcessPackage P} (L : LectinGlycanBindingPackage G)
    (E : LectinGlycanBindingEvidence L) : LectinGlycanBindingClosed L := by
  exact And.intro E.lectinRepertoireClosed
    (And.intro E.bindingSpecificityClosed
      (And.intro E.avidityEffectsClosed E.signalingDownstreamClosed))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse