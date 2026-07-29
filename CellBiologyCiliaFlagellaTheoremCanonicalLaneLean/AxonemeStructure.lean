import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure AxonemeStructurePackage where
  doubletMicrotubules : Prop
  dyneinArms : Prop
  radialSpokes : Prop
  centralPair : Prop
  nexinLinks : Prop

structure AxonemeStructureEvidence (A : AxonemeStructurePackage) where
  doubletMicrotubulesClosed : A.doubletMicrotubules
  dyneinArmsClosed : A.dyneinArms
  radialSpokesClosed : A.radialSpokes
  centralPairClosed : A.centralPair
  nexinLinksClosed : A.nexinLinks

def AxonemeStructureClosed (A : AxonemeStructurePackage) : Prop :=
  A.doubletMicrotubules ∧ A.dyneinArms ∧ A.radialSpokes ∧ A.centralPair ∧ A.nexinLinks

theorem axoneme_structure_closed_from_evidence (A : AxonemeStructurePackage) (E : AxonemeStructureEvidence A) :
    AxonemeStructureClosed A := by
  exact And.intro E.doubletMicrotubulesClosed
    (And.intro E.dyneinArmsClosed
      (And.intro E.radialSpokesClosed
        (And.intro E.centralPairClosed E.nexinLinksClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse