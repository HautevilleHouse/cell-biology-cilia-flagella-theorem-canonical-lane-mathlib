import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliopathyModelPackage where
  geneticMutationEffect : Prop
  structuralDefect : Prop
  signalingDisruption : Prop
  phenotypicManifestation : Prop
  therapeuticTarget : Prop

structure CiliopathyModelEvidence (C : CiliopathyModelPackage) where
  geneticMutationEffectClosed : C.geneticMutationEffect
  structuralDefectClosed : C.structuralDefect
  signalingDisruptionClosed : C.signalingDisruption
  phenotypicManifestationClosed : C.phenotypicManifestation
  therapeuticTargetClosed : C.therapeuticTarget

def CiliopathyModelClosed (C : CiliopathyModelPackage) : Prop :=
  C.geneticMutationEffect ∧ C.structuralDefect ∧ C.signalingDisruption ∧
  C.phenotypicManifestation ∧ C.therapeuticTarget

theorem ciliopathy_model_closed_from_evidence (C : CiliopathyModelPackage)
    (E : CiliopathyModelEvidence C) : CiliopathyModelClosed C := by
  exact And.intro E.geneticMutationEffectClosed
    (And.intro E.structuralDefectClosed
      (And.intro E.signalingDisruptionClosed
        (And.intro E.phenotypicManifestationClosed
          E.therapeuticTargetClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse