import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliaSignalingSensoryPackage where
  primaryCilium : Type
  signalTransduction : Prop
  hedgehogSignaling : Prop
  wntSignaling : Prop
  photoreception : Prop
  primaryCiliumClosed : primaryCilium
  signalTransductionClosed : signalTransduction
  hedgehogSignalingClosed : hedgehogSignaling
  wntSignalingClosed : wntSignaling
  photoreceptionClosed : photoreception

def CiliaSignalingSensoryClosed (S : CiliaSignalingSensoryPackage) : Prop :=
  S.signalTransduction ∧ S.hedgehogSignaling ∧
  S.wntSignaling ∧ S.photoreception

theorem cilia_signaling_sensory_closed_from_package (S : CiliaSignalingSensoryPackage) :
    CiliaSignalingSensoryClosed S := by
  exact And.intro S.signalTransductionClosed
    (And.intro S.hedgehogSignalingClosed
      (And.intro S.wntSignalingClosed S.photoreceptionClosed))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse