import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure IntraflagellarTransportPackage where
  anterogradeTransport : Prop
  retrogradeTransport : Prop
  IFTComplexComposition : Prop
  cargoBindingSpecificity : Prop
  turnoverDynamics : Prop

structure IntraflagellarTransportEvidence (I : IntraflagellarTransportPackage) where
  anterogradeTransportClosed : I.anterogradeTransport
  retrogradeTransportClosed : I.retrogradeTransport
  IFTComplexCompositionClosed : I.IFTComplexComposition
  cargoBindingSpecificityClosed : I.cargoBindingSpecificity
  turnoverDynamicsClosed : I.turnoverDynamics

def IntraflagellarTransportClosed (I : IntraflagellarTransportPackage) : Prop :=
  I.anterogradeTransport ∧ I.retrogradeTransport ∧ I.IFTComplexComposition ∧
  I.cargoBindingSpecificity ∧ I.turnoverDynamics

theorem intraflagellar_transport_closed_from_evidence (I : IntraflagellarTransportPackage)
    (E : IntraflagellarTransportEvidence I) : IntraflagellarTransportClosed I := by
  exact And.intro E.anterogradeTransportClosed
    (And.intro E.retrogradeTransportClosed
      (And.intro E.IFTComplexCompositionClosed
        (And.intro E.cargoBindingSpecificityClosed
          E.turnoverDynamicsClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse