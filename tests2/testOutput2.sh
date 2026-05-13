#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "========================================"
echo "  TEST: Output de Main2.java"
echo "========================================"
echo ""

javac -encoding UTF-8 Main2.java 2>&1

if [ $? -ne 0 ]; then
    echo -e "${RED}❌ FAIL: Main2.java no compiló.${NC}"
    exit 1
fi

OUTPUT=$(java Main2 2>&1)

NORMALIZED=$(echo "$OUTPUT" \
    | tr '[:upper:]' '[:lower:]' \
    | tr -s ' ' \
    | sed 's/^ *//;s/ *$//')

FAIL=0

# Verificar movimientos
check_move() {
    local move="$1"

    # normalizar también el texto esperado
    local normalized_move=$(echo "$move" \
        | tr '[:upper:]' '[:lower:]' \
        | tr -s ' ' \
        | sed 's/^ *//;s/ *$//')

    if echo "$NORMALIZED" | grep -qiF "$normalized_move"; then
        echo -e "${GREEN}✅ PASS: '$move'${NC}"
    else
        echo -e "${RED}❌ FAIL: No se encontró '$move'${NC}"
        FAIL=$((FAIL + 1))
    fi
}

check_move "Mover disco 1 de A a C"
check_move "Mover disco 2 de A a B"
check_move "Mover disco 1 de C a B"
check_move "Mover disco 3 de A a C"
check_move "Mover disco 1 de B a A"
check_move "Mover disco 2 de B a C"
check_move "Mover disco 1 de A a C"

echo ""
echo "Output obtenido:"
echo "$OUTPUT"

if [ $FAIL -eq 0 ]; then
    echo -e "${GREEN}🎉 Output correcto.${NC}"
    exit 0
else
    echo -e "${RED}💥 $FAIL movimiento(s) incorrecto(s).${NC}"
    exit 1
fi
