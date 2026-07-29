import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GlycanStructure where
  carrier : Type
  topology : TopologicalSpace carrier

structure GlycobiologyAdmittedObject where
  glycan : GlycanStructure
  bindingAffinity : Prop
  specificity : Prop
  enzymeRecognition : Prop
  conclusion : bindingAffinity ∧ specificity ∧ enzymeRecognition

structure GlycobiologyEndgameState where
  object : GlycobiologyAdmittedObject

def GlycobiologyWitnessClosed (O : GlycobiologyAdmittedObject) : Prop :=
  O.bindingAffinity ∧ O.specificity ∧ O.enzymeRecognition

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse