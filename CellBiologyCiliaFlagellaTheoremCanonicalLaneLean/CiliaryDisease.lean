import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliopathyPackage where
  polycysticKidneyDisease : Prop
  bbs : Prop
  primaryCiliaryDyskinesia : Prop
  retinalDegeneration : Prop
  situsInversus : Prop

structure CiliopathyEvidence (D : CiliopathyPackage) where
  polycysticKidneyDiseaseClosed : D.polycysticKidneyDisease
  bbsClosed : D.bbs
  primaryCiliaryDyskinesiaClosed : D.primaryCiliaryDyskinesia
  retinalDegenerationClosed : D.retinalDegeneration
  situsInversusClosed : D.situsInversus

def CiliopathyClosed (D : CiliopathyPackage) : Prop :=
  D.polycysticKidneyDisease ∧ D.bbs ∧ D.primaryCiliaryDyskinesia ∧ D.retinalDegeneration ∧ D.situsInversus

theorem ciliopathy_closed_from_evidence (D : CiliopathyPackage) (E : CiliopathyEvidence D) :
    CiliopathyClosed D := by
  exact And.intro E.polycysticKidneyDiseaseClosed (And.intro E.bbsClosed (And.intro E.primaryCiliaryDyskinesiaClosed (And.intro E.retinalDegenerationClosed E.situsInversusClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse