import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycanStructurePackage where
  monosaccharideComposition : Prop
  glycosidicLinkages : Prop
  branchPattern : Prop
  stereochemistry : Prop
  molecularWeight : Prop

structure GlycanStructureEvidence (G : GlycanStructurePackage) where
  monosaccharideCompositionClosed : G.monosaccharideComposition
  glycosidicLinkagesClosed : G.glycosidicLinkages
  branchPatternClosed : G.branchPattern
  stereochemistryClosed : G.stereochemistry
  molecularWeightClosed : G.molecularWeight

def GlycanStructureClosed (G : GlycanStructurePackage) : Prop :=
  G.monosaccharideComposition ∧ G.glycosidicLinkages ∧ G.branchPattern ∧ G.stereochemistry ∧ G.molecularWeight

theorem glycan_structure_closed_from_evidence (G : GlycanStructurePackage) (E : GlycanStructureEvidence G) : GlycanStructureClosed G := by
  exact And.intro E.monosaccharideCompositionClosed
    (And.intro E.glycosidicLinkagesClosed
      (And.intro E.branchPatternClosed
        (And.intro E.stereochemistryClosed E.molecularWeightClosed)))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse