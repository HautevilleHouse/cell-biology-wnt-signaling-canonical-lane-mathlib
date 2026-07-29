import WntSignalingSourceDependencies

namespace HautevilleHouse
namespace CellBiologyWntSignalingCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

def sourceFiles : List SourceFile :=
  [{ path := "scripts/extract_wnt.py", sha256 := "def456", functionCount := 5, classCount := 0, assignmentCount := 3, parseOk := true }]

theorem source_file_count_checked : sourceFiles.length = 1 := by
  rfl

end CellBiologyWntSignalingCanonicalLaneLean
end HautevilleHouse