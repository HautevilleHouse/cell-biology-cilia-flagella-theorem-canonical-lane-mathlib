import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliogenesisPackage where
  centrioleMigration : Prop
  membraneDocking : Prop
  axonemeExtension : Prop
  transitionZoneFormation : Prop
  ciliaryMembraneSpecialization : Prop

structure CiliogenesisEvidence (C : CiliogenesisPackage) where
  centrioleMigrationClosed : C.centrioleMigration
  membraneDockingClosed : C.membraneDocking
  axonemeExtensionClosed : C.axonemeExtension
  transitionZoneFormationClosed : C.transitionZoneFormation
  ciliaryMembraneSpecializationClosed : C.ciliaryMembraneSpecialization

def CiliogenesisClosed (C : CiliogenesisPackage) : Prop :=
  C.centrioleMigration ∧ C.membraneDocking ∧ C.axonemeExtension ∧
  C.transitionZoneFormation ∧ C.ciliaryMembraneSpecialization

theorem ciliogenesis_closed_from_evidence (C : CiliogenesisPackage)
    (E : CiliogenesisEvidence C) : CiliogenesisClosed C := by
  exact And.intro E.centrioleMigrationClosed
    (And.intro E.membraneDockingClosed
      (And.intro E.axonemeExtensionClosed
        (And.intro E.transitionZoneFormationClosed
          E.ciliaryMembraneSpecializationClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse