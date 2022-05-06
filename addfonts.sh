for file in \
	ESCOLAR8.ttf \
	Edm.ttf \
	Escolar_C.ttf \
	Escolar_G.ttf \
	Escolar_N.ttf \
	Escolar_P.ttf \
	massallera.ttf \
	Memima.ttf \
	'Mestra1[MeMimaPautada].ttf' \
	'Mestra2[MeMimaPuntejada].ttf' \
	'Mestra4[DoblePautaPuntejada].ttf' \
	Palmemima.ttf \
; do
	wget files.nuryana.com/fonts/"$file" && sudo mv "$file" /opt/openboard/customizations/fonts/
done
