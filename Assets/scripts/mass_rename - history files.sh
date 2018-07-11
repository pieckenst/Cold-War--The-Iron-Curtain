
for file in *.txt; do
	echo $file
	sed -E -b \
	"s/gw_artillery/artillery_1/; \
	s/interwar_antitank/anti_tank_1/; \
	s/antitank1/anti_tank_2/; \
	/antitank2/d; \
	s/interwar_antiair/anti_air_1/; \
	s/antiair1/anti_air_2/; \
	s/antiair2/anti_air_3/; \
	/antiair3/d; \
	/armored_engineering_1/d; \
	/armored_engineering_2/d; \
	/armored_engineering_3/d; \
	/armored_engineering_4/d; \
	/armored_engineering_5/d; \
	/recon_mechanized_1/d; \
	/recon_mechanized_2/d; \
	/recon_mechanized_3/d; \
	/recon_mechanized_4/d; \
	/recon_mechanized_5/d; \
	s/sp_aa1/sp_aa_1/; \
	s/sp_aa2/sp_aa_2/; \
	s/tankdestroyer1/td_1/; \
	s/tankdestroyer2/td_2/; \
	s/tankdestroyer3/wheeled_td_1/; \
	s/tankdestroyer4/wheeled_td_2/; \
	s/tankdestroyer5/wheeled_td_3/; \
	" \
	"$file" > "fix/$file"
done