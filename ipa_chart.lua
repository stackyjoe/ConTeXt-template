ipa = {
	vowels={},
	consonants={},
	combining={},
}

vowel_pairs = {
	{ "close, front, unrounded", utf.char(0x0069)},
	{ "mid, central", utf.char(0x0259)},
	{ "open, back, unrounded", utf.char(0x0251)},
	{ "nearclose, back, rounded", utf.char(0x028A)},
	{ "nearclose, front, unrounded", utf.char(0x026A)}
}

consonant_pairs = {
	{ "voiced, velar, nasal", utf.char(0x014B)},
	{ "voiced, fricative, palatoalveolar", utf.char(0x0292)},
	{ "unvoiced, fricative, palatoalveolar", utf.char(0x0283)},
	{ "unvoiced, velar, sibilant, fricative", "x"},
	{ "voiced, velar, sibilant, fricative", utf.char(0x0263)},
	{ "unvoiced, nonsibilant, fricative, dental", utf.char(0x03B8)},
	{ "voiced, nonsibilant, fricative, dental", utf.char(0x00F0)}
}

combining = {
	{ "tiemark", utf.char(0x0361)}
}

