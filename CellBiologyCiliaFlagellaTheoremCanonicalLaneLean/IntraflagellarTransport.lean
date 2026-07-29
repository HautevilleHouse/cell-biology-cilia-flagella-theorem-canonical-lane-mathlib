import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure IFTComponent where
  componentName : String
  molecularWeight : ℝ
  cargoBindingAffinity : ℝ
  motorAttachment : Bool

structure IntraflagellarTransportPackage where
  anterogradeMotor : String
  retrogradeMotor : String
  iftParticles : List IFTComponent
  cargoLoaded : Prop
  bidirectionalTransport : Prop
  traffickingRegulation : Prop
  cargoLoadedTerm : cargoLoaded
  bidirectionalTransportTerm : bidirectionalTransport
  traffickingRegulationTerm : traffickingRegulation

structure IntraflagellarTransportEvidence (I : IntraflagellarTransportPackage) where
  cargoLoadedClosed : I.cargoLoaded
  bidirectionalTransportClosed : I.bidirectionalTransport
  traffickingRegulationClosed : I.traffickingRegulation

def IntraflagellarTransportClosed (I : IntraflagellarTransportPackage) : Prop :=
  I.cargoLoaded ∧ I.bidirectionalTransport ∧ I.traffickingRegulation

theorem intraflagellar_transport_closed_from_evidence (I : IntraflagellarTransportPackage)
    (E : IntraflagellarTransportEvidence I) : IntraflagellarTransportClosed I := by
  exact And.intro E.cargoLoadedClosed
    (And.intro E.bidirectionalTransportClosed E.traffickingRegulationClosed)

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse