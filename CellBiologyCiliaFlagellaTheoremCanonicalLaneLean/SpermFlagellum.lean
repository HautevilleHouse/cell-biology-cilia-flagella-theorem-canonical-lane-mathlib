import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure SpermFlagellumPackage where
  axonemeStructure : Prop
  mitochondrialSheath : Prop
  fibrousSheath : Prop
  motilityPattern : Prop
  hyperactivation : Prop

structure SpermFlagellumEvidence (S : SpermFlagellumPackage) where
  axonemeStructureClosed : S.axonemeStructure
  mitochondrialSheathClosed : S.mitochondrialSheath
  fibrousSheathClosed : S.fibrousSheath
  motilityPatternClosed : S.motilityPattern
  hyperactivationClosed : S.hyperactivation

def SpermFlagellumClosed (S : SpermFlagellumPackage) : Prop :=
  S.axonemeStructure ∧ S.mitochondrialSheath ∧ S.fibrousSheath ∧ S.motilityPattern ∧ S.hyperactivation

theorem sperm_flagellum_closed_from_evidence (S : SpermFlagellumPackage) (E : SpermFlagellumEvidence S) :
    SpermFlagellumClosed S := by
  exact And.intro E.axonemeStructureClosed (And.intro E.mitochondrialSheathClosed (And.intro E.fibrousSheathClosed (And.intro E.motilityPatternClosed E.hyperactivationClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse