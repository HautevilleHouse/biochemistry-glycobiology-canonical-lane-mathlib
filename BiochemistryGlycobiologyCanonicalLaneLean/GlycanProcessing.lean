import HautevilleHouse.BiochemistryGlycobiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycanProcessingPackage where
  processingSteps : List String
  qualityControl : Prop
  foldingCheckpoint : Prop
  secretionCompetence : Prop
  degradationPathway : Prop

structure GlycanProcessingEvidence (P : GlycanProcessingPackage) where
  processingStepsClosed : P.processingSteps.length ≥ 3
  qualityControlClosed : P.qualityControl
  foldingCheckpointClosed : P.foldingCheckpoint
  secretionCompetenceClosed : P.secretionCompetence
  degradationPathwayClosed : P.degradationPathway

def GlycanProcessingClosed (P : GlycanProcessingPackage) : Prop :=
  P.processingSteps.length ≥ 3 ∧ P.qualityControl ∧ P.foldingCheckpoint ∧ P.secretionCompetence ∧ P.degradationPathway

theorem glycan_processing_closed_from_evidence (P : GlycanProcessingPackage) (E : GlycanProcessingEvidence P) : GlycanProcessingClosed P := by
  exact And.intro E.processingStepsClosed
    (And.intro E.qualityControlClosed
      (And.intro E.foldingCheckpointClosed
        (And.intro E.secretionCompetenceClosed E.degradationPathwayClosed)))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse