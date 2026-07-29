import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure GlycoproteinBiosynthesis where
  glycanAttachment : List String
  proteinChains : List String
  processingSteps : List String
  secretionCompetent : Prop

def GlycoproteinBiosynthesisClosed (B : GlycoproteinBiosynthesis) : Prop :=
  B.secretionCompetent

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse
