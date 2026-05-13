#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "========================================"
echo "  TEST: Output de Main1.java"
echo "========================================"
echo ""

javac -encoding UTF-8 Main1.java 2>&1

if [ $? -ne 0 ]; then
    echo -e "${RED}❌ FAIL: Main1.java no compiló.${NC}"
    exit 1
fi

OUTPUT=$(java Main1 2>&1)

NORMALIZED=$(echo "$OUTPUT" \
    | tr '[:upper:]' '[:lower:]' \
    | tr -s ' ' \
    | sed 's/^ *//;s/ *$//')

FAIL=0

if echo "$NORMALIZED" | grep -qi "racecar -> es palindromo"; then
    echo -e "${GREEN}✅ PASS: racecar reconocido.${NC}"
else
    echo -e "${RED}❌ FAIL: racecar incorrecto.${NC}"
    FAIL=$((FAIL + 1))
fi

if echo "$NORMALIZED" | grep -qi "hello -> no es palindromo"; then
    echo -e "${GREEN}✅ PASS: hello reconocido.${NC}"
else
    echo -e "${RED}❌ FAIL: hello incorrecto.${NC}"
    FAIL=$((FAIL + 1))
fi

echo ""
echo "Output obtenido:"
echo "$OUTPUT"

if [ $FAIL -eq 0 ]; then
    echo -e "${GREEN}🎉 Output correcto.${NC}"
    exit 0
else
    echo -e "${RED}💥 Output incorrecto.${NC}"
    exit 1
fi
