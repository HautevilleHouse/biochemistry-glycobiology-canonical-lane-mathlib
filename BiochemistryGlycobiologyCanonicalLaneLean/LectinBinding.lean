import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure LectinBindingPackage where
  lectinType : Prop
  glycanLigand : Prop
  bindingAffinity : Prop
  specificity : Prop
  physiologicalEffect : Prop

structure LectinBindingEvidence (L : LectinBindingPackage) where
  lectinTypeClosed : L.lectinType
  glycanLigandClosed : L.glycanLigand
  bindingAffinityClosed : L.bindingAffinity
  specificityClosed : L.specificity
  physiologicalEffectClosed : L.physiologicalEffect

def LectinBindingClosed (L : LectinBindingPackage) : Prop :=
  L.lectinType ∧ L.glycanLigand ∧ L.bindingAffinity ∧ L.specificity ∧ L.physiologicalEffect

theorem lectin_binding_closed_from_evidence (L : LectinBindingPackage) (Ev : LectinBindingEvidence L) : LectinBindingClosed L := by
  exact And.intro Ev.lectinTypeClosed
    (And.intro Ev.glycanLigandClosed
      (And.intro Ev.bindingAffinityClosed
        (And.intro Ev.specificityClosed Ev.physiologicalEffectClosed)))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse