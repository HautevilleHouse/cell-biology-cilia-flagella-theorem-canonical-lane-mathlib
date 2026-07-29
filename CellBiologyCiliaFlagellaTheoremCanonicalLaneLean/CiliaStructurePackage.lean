import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliaStructurePackage where
  axonemeStructure : Prop
  basalBodyOrganization : Prop
  dyneinArmComposition : Prop
  radialSpokeGeometry : Prop
  microtubuleDoubletArrangement : Prop

structure CiliaStructureEvidence (C : CiliaStructurePackage) where
  axonemeStructureClosed : C.axonemeStructure
  basalBodyOrganizationClosed : C.basalBodyOrganization
  dyneinArmCompositionClosed : C.dyneinArmComposition
  radialSpokeGeometryClosed : C.radialSpokeGeometry
  microtubuleDoubletArrangementClosed : C.microtubuleDoubletArrangement

def CiliaStructureClosed (C : CiliaStructurePackage) : Prop :=
  C.axonemeStructure ∧ C.basalBodyOrganization ∧ C.dyneinArmComposition ∧
  C.radialSpokeGeometry ∧ C.microtubuleDoubletArrangement

theorem cilia_structure_closed_from_evidence (C : CiliaStructurePackage)
    (E : CiliaStructureEvidence C) : CiliaStructureClosed C := by
  exact And.intro E.axonemeStructureClosed
    (And.intro E.basalBodyOrganizationClosed
      (And.intro E.dyneinArmCompositionClosed
        (And.intro E.radialSpokeGeometryClosed
          E.microtubuleDoubletArrangementClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse