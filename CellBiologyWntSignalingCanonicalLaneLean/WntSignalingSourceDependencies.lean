import WntSignalingReviewerBridge

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  [{ file := "scripts/extract_wnt.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 }]

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 1 := by
  rfl

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse