import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

def CiliaFlagellaWitnessClosed (O : CiliaFlagellaAdmittedObject) : Prop :=
  O.ciliumFlagellumStructure ∧ O.motilityFunction ∧ O.cellularSignaling

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CiliaFlagellaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse