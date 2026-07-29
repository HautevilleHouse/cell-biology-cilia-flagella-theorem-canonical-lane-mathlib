import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure CiliaBendFormationPackage where
  slidingMicrotubuleModel : Prop
  geometricClutch : Prop
  switchPointMechanism : Prop
  curvatureControl : Prop
  bendPropagation : Prop
  slidingMicrotubuleModelClosed : slidingMicrotubuleModel
  geometricClutchClosed : geometricClutch
  switchPointMechanismClosed : switchPointMechanism
  curvatureControlClosed : curvatureControl
  bendPropagationClosed : bendPropagation

def CiliaBendFormationClosed (B : CiliaBendFormationPackage) : Prop :=
  B.slidingMicrotubuleModel ∧ B.geometricClutch ∧
  B.switchPointMechanism ∧ B.curvatureControl ∧ B.bendPropagation

theorem cilia_bend_formation_closed_from_package (B : CiliaBendFormationPackage) :
    CiliaBendFormationClosed B := by
  exact And.intro B.slidingMicrotubuleModelClosed
    (And.intro B.geometricClutchClosed
      (And.intro B.switchPointMechanismClosed
        (And.intro B.curvatureControlClosed B.bendPropagationClosed)))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse