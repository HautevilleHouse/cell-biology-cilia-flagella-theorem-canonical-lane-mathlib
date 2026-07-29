import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaTheoremCanonicalLaneLean

structure SignalingPathway where
  hedgehogSignaling : Prop
  wntSignaling : Prop
  pdgfReceptorLocalization : Prop
  calciumSignaling : Prop

structure SignalingPathwayEvidence (S : SignalingPathway) where
  hedgehogSignalingClosed : S.hedgehogSignaling
  wntSignalingClosed : S.wntSignaling
  pdgfReceptorLocalizationClosed : S.pdgfReceptorLocalization
  calciumSignalingClosed : S.calciumSignaling

def SignalingPathwayClosed (S : SignalingPathway) : Prop :=
  S.hedgehogSignaling /
  S.wntSignaling /
  S.pdgfReceptorLocalization /
  S.calciumSignaling

theorem signaling_pathway_closed_from_evidence (S : SignalingPathway)
    (E : SignalingPathwayEvidence S) : SignalingPathwayClosed S := by
  exact And.intro E.hedgehogSignalingClosed (And.intro E.wntSignalingClosed
    (And.intro E.pdgfReceptorLocalizationClosed E.calciumSignalingClosed))

end CellBiologyCiliaFlagellaTheoremCanonicalLaneLean
end HautevilleHouse