import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure MotilityModel where
  beatFrequency : ℝ
  waveformPattern : String
  calciumRegulation : Prop
  energyConsumption : Prop

structure MotilityModelEvidence (M : MotilityModel) where
  beatFrequencyPositive : M.beatFrequency > 0
  waveformPatternDefined : M.waveformPattern ≠ ""
  calciumRegulationClosed : M.calciumRegulation
  energyConsumptionClosed : M.energyConsumption

def MotilityModelClosed (M : MotilityModel) : Prop :=
  M.beatFrequency > 0 /
  M.waveformPattern ≠ "" /
  M.calciumRegulation /
  M.energyConsumption

theorem motility_model_closed_from_evidence (M : MotilityModel)
    (E : MotilityModelEvidence M) : MotilityModelClosed M := by
  exact And.intro E.beatFrequencyPositive (And.intro E.waveformPatternDefined
    (And.intro E.calciumRegulationClosed E.energyConsumptionClosed))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse