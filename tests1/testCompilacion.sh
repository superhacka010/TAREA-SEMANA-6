#!/bin/bash
 
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'
 
echo "========================================"
echo "  TEST: Compilacion de Main1.java"
echo "========================================"
echo ""
 
javac -encoding UTF-8 Main1.java 2>&1
 
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ PASS: Main1.java compilo correctamente.${NC}"
    exit 0
else
    echo -e "${RED}❌ FAIL: Main1.java no compilo. Revisa los errores anteriores.${NC}"
    exit 1
fi
 
