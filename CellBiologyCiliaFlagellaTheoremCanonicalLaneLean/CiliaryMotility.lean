import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliaryMotilityPackage where
  asinhronousBeat : Prop
  effectiveRecoveryStroke : Prop
  slidingMicrotubuleMechanism : Prop
  calciumRegulation : Prop
  atpHydrolysis : Prop

structure CiliaryMotilityEvidence (C : CiliaryMotilityPackage) where
  asinhronousBeatClosed : C.asinhronousBeat
  effectiveRecoveryStrokeClosed : C.effectiveRecoveryStroke
  slidingMicrotubuleMechanismClosed : C.slidingMicrotubuleMechanism
  calciumRegulationClosed : C.calciumRegulation
  atpHydrolysisClosed : C.atpHydrolysis

def CiliaryMotilityClosed (C : CiliaryMotilityPackage) : Prop :=
  C.asinhronousBeat ∧ C.effectiveRecoveryStroke ∧ C.slidingMicrotubuleMechanism ∧ C.calciumRegulation ∧ C.atpHydrolysis

theorem ciliary_motility_closed_from_evidence (C : CiliaryMotilityPackage) (E : CiliaryMotilityEvidence C) :
    CiliaryMotilityClosed C := by
  exact And.intro E.asinhronousBeatClosed
    (And.intro E.effectiveRecoveryStrokeClosed
      (And.intro E.slidingMicrotubuleMechanismClosed
        (And.intro E.calciumRegulationClosed E.atpHydrolysisClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse