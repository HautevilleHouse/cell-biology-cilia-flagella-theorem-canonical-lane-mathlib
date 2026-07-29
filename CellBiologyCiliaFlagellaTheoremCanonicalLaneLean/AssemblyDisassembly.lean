import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure AssemblyDisassembly where
  basalBodyDocking : Prop
  axonemeElongation : Prop
  disassemblySignal : Prop
  resorptionProcess : Prop

structure AssemblyDisassemblyEvidence (A : AssemblyDisassembly) where
  basalBodyDockingClosed : A.basalBodyDocking
  axonemeElongationClosed : A.axonemeElongation
  disassemblySignalClosed : A.disassemblySignal
  resorptionProcessClosed : A.resorptionProcess

def AssemblyDisassemblyClosed (A : AssemblyDisassembly) : Prop :=
  A.basalBodyDocking /
  A.axonemeElongation /
  A.disassemblySignal /
  A.resorptionProcess

theorem assembly_disassembly_closed_from_evidence (A : AssemblyDisassembly)
    (E : AssemblyDisassemblyEvidence A) : AssemblyDisassemblyClosed A := by
  exact And.intro E.basalBodyDockingClosed (And.intro E.axonemeElongationClosed
    (And.intro E.disassemblySignalClosed E.resorptionProcessClosed))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse