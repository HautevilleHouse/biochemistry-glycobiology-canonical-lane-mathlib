import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycanStructure where
  monosaccharideSequence : List String
  linkagePositions : List Nat
  branchingPattern : List (List Nat)

structure GlycobiologyAdmittedObject where
  glycan : GlycanStructure
  bindingValidated : Prop
  pathwayConsistent : Prop
  conclusion : bindingValidated ∧ pathwayConsistent

def GlycobiologyWitnessClosed (O : GlycobiologyAdmittedObject) : Prop :=
  O.bindingValidated ∧ O.pathwayConsistent

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse