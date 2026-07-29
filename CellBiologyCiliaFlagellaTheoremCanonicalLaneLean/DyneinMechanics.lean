import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure DyneinMotorState where
  boundToMicrotubule : Prop
  atpHydrolysis : Prop
  powerStroke : Prop

def dyneinBridgeClosed (s : DyneinMotorState) : Prop :=
  s.boundToMicrotubule ∧ s.atpHydrolysis ∧ s.powerStroke

theorem dynein_bridge_from_state (s : DyneinMotorState) : dyneinBridgeClosed s := by
  exact And.intro s.boundToMicrotubule (And.intro s.atpHydrolysis s.powerStroke)

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse