import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  cellularConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "cell-biology-cilia-flagella-canonical-lane",
    theoremName := "Cilia Flagella Structure-Function Motility Signal",
    theoremObject := "CiliaFlagellaAdmittedObject",
    classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary",
    cellularConstrainedStatement := "cellular-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "cellular_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse