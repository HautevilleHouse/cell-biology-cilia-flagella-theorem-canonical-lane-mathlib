import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure IFTPackage where
  anterogradeTransport : Prop
  retrogradeTransport : Prop
  IFTComplexes : Prop
  cargoBinding : Prop
  turnaroundAtTip : Prop

structure IFTEvidence (I : IFTPackage) where
  anterogradeTransportClosed : I.anterogradeTransport
  retrogradeTransportClosed : I.retrogradeTransport
  IFTComplexesClosed : I.IFTComplexes
  cargoBindingClosed : I.cargoBinding
  turnaroundAtTipClosed : I.turnaroundAtTip

def IFTClosed (I : IFTPackage) : Prop :=
  I.anterogradeTransport ∧ I.retrogradeTransport ∧ I.IFTComplexes ∧ I.cargoBinding ∧ I.turnaroundAtTip

theorem ift_closed_from_evidence (I : IFTPackage) (E : IFTEvidence I) :
    IFTClosed I := by
  exact And.intro E.anterogradeTransportClosed
    (And.intro E.retrogradeTransportClosed
      (And.intro E.IFTComplexesClosed
        (And.intro E.cargoBindingClosed E.turnaroundAtTipClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse