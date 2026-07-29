import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure DyneinMotivePackage where
  innerArmDynein : Type
  outerArmDynein : Type
  atpHydrolysis : Prop
  microtubuleBinding : Prop
  conformationalChange : Prop
  slidingForce : Prop
  atpHydrolysisClosed : atpHydrolysis
  microtubuleBindingClosed : microtubuleBinding
  conformationalChangeClosed : conformationalChange
  slidingForceClosed : slidingForce

def DyneinMotiveClosed (D : DyneinMotivePackage) : Prop :=
  D.atpHydrolysis ∧ D.microtubuleBinding ∧ D.conformationalChange ∧ D.slidingForce

theorem dynein_motive_closed_from_package (D : DyneinMotivePackage) :
    DyneinMotiveClosed D := by
  exact And.intro D.atpHydrolysisClosed
    (And.intro D.microtubuleBindingClosed
      (And.intro D.conformationalChangeClosed D.slidingForceClosed))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse