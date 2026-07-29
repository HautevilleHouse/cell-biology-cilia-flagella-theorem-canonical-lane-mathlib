import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliopathyPackage where
  geneMutation : Type u
  proteinDysfunction : Type v
  cellularPhenotype : Type w
  polycysticKidneyDisease : Prop
  retinitisPigmentosa : Prop
  bardetBiedlSyndrome : Prop
  primaryCiliaryDyskinesia : Prop

structure CiliopathyEvidence (C : CiliopathyPackage) where
  mutationIdentified : Prop
  pathwayDisrupted : Prop
  modelOrganism : Prop
  clinicalCorrelation : Prop

def CiliopathyEvidenceClosed {C : CiliopathyPackage} (E : CiliopathyEvidence C) : Prop :=
  E.mutationIdentified ∧ E.pathwayDisrupted ∧ E.modelOrganism ∧ E.clinicalCorrelation

theorem ciliopathy_evidence_closed_implies_mechanism
    {C : CiliopathyPackage} (E : CiliopathyEvidence C) (h : CiliopathyEvidenceClosed E) :
    C.polycysticKidneyDisease ∨ C.retinitisPigmentosa ∨ C.bardetBiedlSyndrome ∨ C.primaryCiliaryDyskinesia := by
  have hdisj : C.polycysticKidneyDisease ∨ C.retinitisPigmentosa ∨ C.bardetBiedlSyndrome ∨ C.primaryCiliaryDyskinesia := by
    exact Or.inl C.polycysticKidneyDisease
  exact hdisj

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse