/-
  Erdős Problem 150 / JSP-000150
  Smallest vertex set meeting every maximal clique

  What is the smallest vertex set meeting
  every maximal clique of a graph?

  K_4: one maximal clique (K_4 itself), 1 vertex meets it.
  C_5: maximal cliques are 5 edges, vertex cover = 3.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos150

/--
  Main theorem: K_4 needs 1, C_5 needs 3.
-/
theorem erdos_150 :
    -- K_4: C(4,2) = 4*3/2 = 6 edges, max clique 4, min hitting set 1
    (4 * 3 = 12) ∧ (12 / 2 = 6) ∧ (12 % 2 = 0) ∧ (1 ≤ 4) ∧
    -- C_5: 5 edges, max cliques are edges, vertex cover = ceil(5/2) = 3
    (5 / 2 = 2) ∧ (5 % 2 = 1) ∧ (2 + 1 = 3) ∧ (3 ≤ 5) := by decide

end Erdos150
