import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCiliaFlagellaTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

def ConstrainedCiliaFlagellaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cilia_flagella_endgame (A : AdmissibleClass) :
    ConstrainedCiliaFlagellaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse