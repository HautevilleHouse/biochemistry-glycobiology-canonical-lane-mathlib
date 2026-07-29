import BiochemistryGlycobiologyCanonicalLaneLean.GlycanMetabolism

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycobiologyDiseaseModelsPackage {Sys : GlycobiologySystem}
    {P : GlycanBiosynthesisPathwaysPackage Sys}
    {G : GlycosylationProcessPackage P}
    {L : LectinGlycanBindingPackage G}
    {M : GlycanMetabolismPackage L} where
  diseaseType : Type
  glycanBiomarkers : Prop
  therapeuticTargets : Prop
  diseaseProgression : Prop

structure GlycobiologyDiseaseModelsEvidence {Sys : GlycobiologySystem}
    {P : GlycanBiosynthesisPathwaysPackage Sys}
    {G : GlycosylationProcessPackage P}
    {L : LectinGlycanBindingPackage G}
    {M : GlycanMetabolismPackage L}
    (D : GlycobiologyDiseaseModelsPackage M) where
  diseaseTypeClosed : D.diseaseType
  glycanBiomarkersClosed : D.glycanBiomarkers
  therapeuticTargetsClosed : D.therapeuticTargets
  diseaseProgressionClosed : D.diseaseProgression

def GlycobiologyDiseaseModelsClosed {Sys : GlycobiologySystem}
    {P : GlycanBiosynthesisPathwaysPackage Sys}
    {G : GlycosylationProcessPackage P}
    {L : LectinGlycanBindingPackage G}
    {M : GlycanMetabolismPackage L}
    (D : GlycobiologyDiseaseModelsPackage M) : Prop :=
  D.diseaseType ∧ D.glycanBiomarkers ∧ D.therapeuticTargets ∧ D.diseaseProgression

theorem glycobiology_disease_models_closed_from_evidence
    {Sys : GlycobiologySystem} {P : GlycanBiosynthesisPathwaysPackage Sys}
    {G : GlycosylationProcessPackage P} {L : LectinGlycanBindingPackage G}
    {M : GlycanMetabolismPackage L} (D : GlycobiologyDiseaseModelsPackage M)
    (E : GlycobiologyDiseaseModelsEvidence D) : GlycobiologyDiseaseModelsClosed D := by
  exact And.intro E.diseaseTypeClosed
    (And.intro E.glycanBiomarkersClosed
      (And.intro E.therapeuticTargetsClosed E.diseaseProgressionClosed))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse