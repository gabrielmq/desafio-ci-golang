package main

import "testing"

func TestSoma(t *testing.T) {
	res := soma(5, 5)
	if res != 10 {
		t.Errorf("Resultado função soma: %d; Resultado esperado: %d", res, 10)
	}
}