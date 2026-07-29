import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycobiologyAdmittedObject where
  systemType : Type
  glycanStructure : Prop
  enzymaticPathway : Prop
  biologicalFunction : Prop
  conclusion : glycanStructure ∧ enzymaticPathway ∧ biologicalFunction

structure AdmissibleClass where
  object : GlycobiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.glycanStructure ∧ A.object.enzymaticPathway ∧ A.object.biologicalFunction) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.glycanStructure ∧ A.object.enzymaticPathway ∧ A.object.biologicalFunction

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse