import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliopathyPackage where
  primaryCiliaryDyskinesia : Prop
  polycysticKidneyDisease : Prop
  retinitisPigmentosa : Prop
  bardetBiedlSyndrome : Prop
  situsInversus : Prop
  primaryCiliaryDyskinesiaClosed : primaryCiliaryDyskinesia
  polycysticKidneyDiseaseClosed : polycysticKidneyDisease
  retinitisPigmentosaClosed : retinitisPigmentosa
  bardetBiedlSyndromeClosed : bardetBiedlSyndrome
  situsInversusClosed : situsInversus

def CiliopathyClosed (C : CiliopathyPackage) : Prop :=
  C.primaryCiliaryDyskinesia ∧ C.polycysticKidneyDisease ∧
  C.retinitisPigmentosa ∧ C.bardetBiedlSyndrome ∧ C.situsInversus

theorem ciliopathy_closed_from_package (C : CiliopathyPackage) :
    CiliopathyClosed C := by
  exact And.intro C.primaryCiliaryDyskinesiaClosed
    (And.intro C.polycysticKidneyDiseaseClosed
      (And.intro C.retinitisPigmentosaClosed
        (And.intro C.bardetBiedlSyndromeClosed C.situsInversusClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse