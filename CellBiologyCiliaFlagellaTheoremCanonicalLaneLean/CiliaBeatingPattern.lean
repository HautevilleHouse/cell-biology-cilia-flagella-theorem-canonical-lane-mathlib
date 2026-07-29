import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliaBeatingPatternPackage where
  asymmetricBeat : Prop
  planarWave : Prop
  frequencyControl : Prop
  waveformParameters : Prop
  metachronalCoordination : Prop
  asymmetricBeatClosed : asymmetricBeat
  planarWaveClosed : planarWave
  frequencyControlClosed : frequencyControl
  waveformParametersClosed : waveformParameters
  metachronalCoordinationClosed : metachronalCoordination

def CiliaBeatingPatternClosed (P : CiliaBeatingPatternPackage) : Prop :=
  P.asymmetricBeat ∧ P.planarWave ∧ P.frequencyControl ∧
  P.waveformParameters ∧ P.metachronalCoordination

theorem cilia_beating_pattern_closed_from_package (P : CiliaBeatingPatternPackage) :
    CiliaBeatingPatternClosed P := by
  exact And.intro P.asymmetricBeatClosed
    (And.intro P.planarWaveClosed
      (And.intro P.frequencyControlClosed
        (And.intro P.waveformParametersClosed P.metachronalCoordinationClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse