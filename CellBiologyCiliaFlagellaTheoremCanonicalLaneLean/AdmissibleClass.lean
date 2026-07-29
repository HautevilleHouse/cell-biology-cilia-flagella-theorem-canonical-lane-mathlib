import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliaFlagellaAdmittedObject where
  cellType : Type
  membraneTopology : TopologicalSpace cellType
  ciliumFlagellumStructure : Prop
  motilityFunction : Prop
  cellularSignaling : Prop
  conclusion : ciliumFlagellumStructure ∧ motilityFunction ∧ cellularSignaling

structure AdmissibleClass where
  object : CiliaFlagellaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CiliaFlagellaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse