import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryGlycobiologyCanonicalLaneLean.GlycanStructure
import HautevilleHouse.BiochemistryGlycobiologyCanonicalLaneLean.GlycosylationPathway
import HautevilleHouse.BiochemistryGlycobiologyCanonicalLaneLean.GlycoproteinBiosynthesis
import HautevilleHouse.BiochemistryGlycobiologyCanonicalLaneLean.LectinBindings

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycobiologyAdmittedObject where
  glycan : GlycanStructure
  pathway : GlycosylationPathway
  biosynthesis : GlycoproteinBiosynthesis
  lectin : LectinBindings
  allClosed : GlycanStructureClosed glycan ∧ GlycosylationPathwayClosed pathway ∧ GlycoproteinBiosynthesisClosed biosynthesis ∧ LectinBindingsClosed lectin

structure AdmissibleClass where
  object : GlycobiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.allClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.allClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.allClosed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse
