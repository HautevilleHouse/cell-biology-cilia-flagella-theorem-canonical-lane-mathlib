import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheorem

structure CiliaUltrastructurePackage where
  membraneSkeleton : Type u
  axonemeStructure : Prop
  dyneinArmsPresent : Prop
  radialSpokesPresent : Prop
  centralPairPresent : Prop

structure CiliaUltrastructureEvidence (C : CiliaUltrastructurePackage) where
  axonemeStructureClosed : C.axonemeStructure
  dyneinArmsPresentClosed : C.dyneinArmsPresent
  radialSpokesPresentClosed : C.radialSpokesPresent
  centralPairPresentClosed : C.centralPairPresent

def CiliaUltrastructureClosed (C : CiliaUltrastructurePackage) : Prop :=
  C.axonemeStructure ∧ C.dyneinArmsPresent ∧ C.radialSpokesPresent ∧ C.centralPairPresent

theorem cilia_ultrastructure_closed_from_evidence (C : CiliaUltrastructurePackage) (E : CiliaUltrastructureEvidence C) : CiliaUltrastructureClosed C := by
  exact And.intro E.axonemeStructureClosed (And.intro E.dyneinArmsPresentClosed (And.intro E.radialSpokesPresentClosed E.centralPairPresentClosed))

end CellBiologyCiliaFlagellaTheorem
end HautevilleHouse
