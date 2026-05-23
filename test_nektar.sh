#!/usr/bin/env bash
set -e

echo "Checking Nektar++ tools..."

which IncNavierStokesSolver || true
which FieldConvert || true
which NekMesh || true

echo ""
echo "IncNavierStokesSolver help:"
IncNavierStokesSolver --help | head -n 20 || true

echo ""
echo "FieldConvert help:"
FieldConvert --help | head -n 20 || true

echo ""
echo "Nektar++ container test finished."
