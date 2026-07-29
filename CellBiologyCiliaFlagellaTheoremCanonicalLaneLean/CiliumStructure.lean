import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliumStructurePackage where
  microtubuleArrangement : Type u
  centralPair : Prop
  nineDoublets : Prop
  radialSpokes : Prop
  dyneinArms : Prop
  ciliaryMembrane : Prop

structure CiliumStructureEvidence (C : CiliumStructurePackage) where
  centralPairClosed : C.centralPair
  nineDoubletsClosed : C.nineDoublets
  radialSpokesClosed : C.radialSpokes
  dyneinArmsClosed : C.dyneinArms
  ciliaryMembraneClosed : C.ciliaryMembrane

def CiliumStructureClosed (C : CiliumStructurePackage) : Prop :=
  C.centralPair ∧ C.nineDoublets ∧ C.radialSpokes ∧ C.dyneinArms ∧ C.ciliaryMembrane

theorem cilium_structure_closed_from_evidence (C : CiliumStructurePackage) (E : CiliumStructureEvidence C) :
    CiliumStructureClosed C := by
  exact And.intro E.centralPairClosed (And.intro E.nineDoubletsClosed (And.intro E.radialSpokesClosed (And.intro E.dyneinArmsClosed E.ciliaryMembraneClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse