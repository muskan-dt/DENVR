#!/bin/bash
# theorem-explainer.sh - Interactive explanation of the module theorem

echo "================================================"
echo "  COMMUTATIVE ALGEBRA MODULE THEOREM EXPLAINER  "
echo "================================================"
echo ""
echo "Theorem: Let A be a Noetherian ring, M a finitely"
echo "generated A-module. Then:"
echo ""
echo "  ⋂_{p ∈ Ass(M)} p = √(Ann(M))"
echo ""
echo "Where:"
echo "  • Ass(M) = associated primes of M"
echo "  • Ann(M) = annihilator ideal of M"
echo "  • √I     = radical of ideal I"
echo ""

echo "Select an option:"
echo "1. Mathematical proof outline"
echo "2. Computational implementation"
echo "3. Business applications"
echo "4. Run verification examples"
echo "5. Exit"
echo ""

read -p "Enter choice [1-5]: " choice

case $choice in
    1)
        echo ""
        echo "PROOF OUTLINE:"
        echo "=============="
        echo "1. Show √(Ann(M)) ⊆ ⋂ Ass(M):"
        echo "   If x ∈ √(Ann(M)), then x^n ∈ Ann(M)"
        echo "   For any p ∈ Ass(M), x^n kills a generator"
        echo "   Thus x ∈ p (since p is prime)"
        echo ""
        echo "2. Show ⋂ Ass(M) ⊆ √(Ann(M)):"
        echo "   Take x ∈ ⋂ Ass(M)"
        echo "   Consider filtration 0 ⊆ M_0 ⊆ ... ⊆ M"
        echo "   Use Noetherian induction"
        echo "   Show x^n M = 0 for some n"
        echo ""
        ;;
    2)
        echo ""
        echo "COMPUTATIONAL IMPLEMENTATION:"
        echo "============================="
        echo "Available in:"
        echo "  • Python (sympy, sage)"
        echo "  • SageMath"
        echo "  • Macaulay2"
        echo "  • Singular"
        echo ""
        echo "Run: python3 src/python/module_theorem.py"
        ;;
    3)
        echo ""
        echo "BUSINESS APPLICATIONS:"
        echo "======================"
        echo "1. System Reliability Analysis"
        echo "   - Associated primes = failure modes"
        echo "   - Annihilator = complete system failure"
        echo ""
        echo "2. Financial Risk Modeling"
        echo "   - Primes = risk factor sets"
        echo "   - Intersection = systematic risk"
        echo ""
        echo "3. Resource Optimization"
        echo "   - Module = project portfolio"
        echo "   - Theorem identifies critical resources"
        ;;
    4)
        echo ""
        echo "RUNNING VERIFICATION EXAMPLES:"
        echo "=============================="
        cd src/python
        python3 module_theorem.py
        ;;
    5)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
