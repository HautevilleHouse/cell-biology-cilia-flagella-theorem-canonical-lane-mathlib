import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure MotilityMechanismPackage where
  slidingMicrotubuleModel : Prop
  dyneinMotorCycle : Prop
  bendingWavePropagation : Prop
  beatFrequencyRegulation : Prop
  fluidFlowGeneration : Prop

structure MotilityMechanismEvidence (M : MotilityMechanismPackage) where
  slidingMicrotubuleModelClosed : M.slidingMicrotubuleModel
  dyneinMotorCycleClosed : M.dyneinMotorCycle
  bendingWavePropagationClosed : M.bendingWavePropagation
  beatFrequencyRegulationClosed : M.beatFrequencyRegulation
  fluidFlowGenerationClosed : M.fluidFlowGeneration

def MotilityMechanismClosed (M : MotilityMechanismPackage) : Prop :=
  M.slidingMicrotubuleModel ∧ M.dyneinMotorCycle ∧ M.bendingWavePropagation ∧
  M.beatFrequencyRegulation ∧ M.fluidFlowGeneration

theorem motility_mechanism_closed_from_evidence (M : MotilityMechanismPackage)
    (E : MotilityMechanismEvidence M) : MotilityMechanismClosed M := by
  exact And.intro E.slidingMicrotubuleModelClosed
    (And.intro E.dyneinMotorCycleClosed
      (And.intro E.bendingWavePropagationClosed
        (And.intro E.beatFrequencyRegulationClosed
          E.fluidFlowGenerationClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse