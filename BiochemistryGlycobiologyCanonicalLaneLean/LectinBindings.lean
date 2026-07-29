import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycobiologyCanonicalLaneLean

structure LectinBindings where
  lectinReceptors : List String
  glycanLigands : List String
  bindingAffinities : List (Float)
  specificityEstablished : Prop

def LectinBindingsClosed (L : LectinBindings) : Prop :=
  L.specificityEstablished

end BiochemistryGlycobiologyCanonicalLaneLean
end HautevilleHouse
