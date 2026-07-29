import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure DyneinMotorPackage where
  heavyChainPresent : Prop
  intermediateChainPresent : Prop
  lightChainPresent : Prop
  atpBindingDomainFunctional : Prop
  microtubuleBindingDomainFunctional : Prop

def DyneinMotorClosed (P : DyneinMotorPackage) : Prop :=
  P.heavyChainPresent ∧ P.intermediateChainPresent ∧ P.lightChainPresent ∧
  P.atpBindingDomainFunctional ∧ P.microtubuleBindingDomainFunctional

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse