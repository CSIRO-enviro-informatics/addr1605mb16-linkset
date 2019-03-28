SELECT
	gnaf.address_mesh_block_2016_real.address_mesh_block_2016_pid,
	gnaf.address_mesh_block_2016_real.address_detail_pid,
	SUBSTRING(gnaf.address_mesh_block_2016_real.mb_2016_pid, 5) AS mesh_block_pid,
	gnaf.address_mesh_block_2016_real.date_created,
	gnaf.address_mesh_block_2016_real.mb_match_code
FROM gnaf.address_mesh_block_2016_real
LEFT JOIN gnaf.address_detail ON gnaf.address_mesh_block_2016_real.address_detail_pid = gnaf.address_detail.address_detail_pid
WHERE gnaf.address_detail.address_detail_pid IS NOT NULL
