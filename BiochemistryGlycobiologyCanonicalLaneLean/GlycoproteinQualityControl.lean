import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycoproteinQualityControlPackage where
  foldingSensors : Prop
  glycosylationCheckpoints : Prop
  ERAssociatedDegradation : Prop
  intracellularTrafficking : Prop
  secretionEfficiency : Prop

structure GlycoproteinQualityControlEvidence (Q : GlycoproteinQualityControlPackage) where
  foldingSensorsClosed : Q.foldingSensors
  glycosylationCheckpointsClosed : Q.glycosylationCheckpoints
  ERAssociatedDegradationClosed : Q.ERAssociatedDegradation
  intracellularTraffickingClosed : Q.intracellularTrafficking
  secretionEfficiencyClosed : Q.secretionEfficiency

def GlycoproteinQualityControlClosed (Q : GlycoproteinQualityControlPackage) : Prop :=
  Q.foldingSensors ∧ Q.glycosylationCheckpoints ∧ Q.ERAssociatedDegradation ∧ Q.intracellularTrafficking ∧ Q.secretionEfficiency

theorem glycoprotein_quality_control_closed_from_evidence (Q : GlycoproteinQualityControlPackage) (Ev : GlycoproteinQualityControlEvidence Q) : GlycoproteinQualityControlClosed Q := by
  exact And.intro Ev.foldingSensorsClosed
    (And.intro Ev.glycosylationCheckpointsClosed
      (And.intro Ev.ERAssociatedDegradationClosed
        (And.intro Ev.intracellularTraffickingClosed Ev.secretionEfficiencyClosed)))

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse