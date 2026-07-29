import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheorem

structure IntraflagellarTransportPackage where
  IFTComplex : Type u
  anterogradeTransport : Prop
  retrogradeTransport : Prop
  cargoLoading : Prop
  trainAssembly : Prop

structure IntraflagellarTransportEvidence (I : IntraflagellarTransportPackage) where
  anterogradeTransportClosed : I.anterogradeTransport
  retrogradeTransportClosed : I.retrogradeTransport
  cargoLoadingClosed : I.cargoLoading
  trainAssemblyClosed : I.trainAssembly

def IntraflagellarTransportClosed (I : IntraflagellarTransportPackage) : Prop :=
  I.anterogradeTransport ∧ I.retrogradeTransport ∧ I.cargoLoading ∧ I.trainAssembly

theorem intraflagellar_transport_closed_from_evidence (I : IntraflagellarTransportPackage) (E : IntraflagellarTransportEvidence I) : IntraflagellarTransportClosed I := by
  exact And.intro E.anterogradeTransportClosed (And.intro E.retrogradeTransportClosed (And.intro E.cargoLoadingClosed E.trainAssemblyClosed))

end CellBiologyCiliaFlagellaTheorem
end HautevilleHouse
