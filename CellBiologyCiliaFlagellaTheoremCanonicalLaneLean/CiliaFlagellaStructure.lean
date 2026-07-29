import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliaFlagellaOrganelle where
  basalBody : Type
  axoneme : Type
  radialSpokes : Type
  nexinLinks : Type
  dyneinArms : Type
  microtubuleDoublets : Prop
  ninePlusTwoArrangement : Prop
  basalBodyPresent : Prop
  axonemeStructureIntact : Prop

structure CiliaFlagellaEvidence (C : CiliaFlagellaOrganelle) where
  microtubuleDoubletsClosed : C.microtubuleDoublets
  ninePlusTwoArrangementClosed : C.ninePlusTwoArrangement
  basalBodyPresentClosed : C.basalBodyPresent
  axonemeStructureIntactClosed : C.axonemeStructureIntact

def CiliaFlagellaStructureClosed (C : CiliaFlagellaOrganelle) : Prop :=
  C.microtubuleDoublets ∧ C.ninePlusTwoArrangement ∧ C.basalBodyPresent ∧ C.axonemeStructureIntact

theorem cilia_flagella_structure_closed_from_evidence
    (C : CiliaFlagellaOrganelle) (E : CiliaFlagellaEvidence C) :
    CiliaFlagellaStructureClosed C := by
  exact And.intro E.microtubuleDoubletsClosed
    (And.intro E.ninePlusTwoArrangementClosed
      (And.intro E.basalBodyPresentClosed E.axonemeStructureIntactClosed))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse