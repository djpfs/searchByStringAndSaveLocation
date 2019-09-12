[addpic.php]

50 - "SELECT pid FROM {$CONFIG['TABLE_PICTURES']} WHERE filepath='" . addslashes($dir_name) . "' AND filename='" . addslashes($file_name) . "' LIMIT 1";

[admin.php]

NULL

[albmgr.php]

61 - "SELECT cid, name, description FROM {$CONFIG['TABLE_CATEGORIES']} WHERE parent = '$parent' AND cid != 1 ORDER BY pos"
67 - "SELECT group_id FROM {$CONFIG['TABLE_CATMAP']} WHERE group_id = '$group_id' AND cid=".$subcat['cid']
139 - "SELECT aid, title FROM {$CONFIG['TABLE_ALBUMS']} WHERE category = $cat ORDER BY pos ASC"
142 - "SELECT aid, title FROM {$CONFIG['TABLE_ALBUMS']} WHERE category = $cat AND owner = $user_id ORDER BY pos ASC"

[banning.php]

96 - "SELECT COUNT(*) FROM {$CONFIG['TABLE_BANNED']} WHERE brute_force = 0"
159 - "SELECT *, UNIX_TIMESTAMP(expiry) AS expiry FROM {$CONFIG['TABLE_BANNED']} WHERE brute_force = 0 ORDER BY $sort $limit"
266 - "SELECT *, UNIX_TIMESTAMP(expiry) AS expiry FROM {$CONFIG['TABLE_BANNED']} WHERE brute_force = 0 ORDER BY $sort $limit"
329 - "SELECT null FROM {$CONFIG['TABLE_BANNED']} WHERE ban_id = '$posted_ban_id' LIMIT 1"
332 - "DELETE FROM {$CONFIG['TABLE_BANNED']} WHERE ban_id = $posted_ban_id"
376 - "UPDATE {$CONFIG['TABLE_BANNED']} SET user_id={$post_user_id}, user_name='{$post_user_name}', email='{$post_email}', ip_addr={$post_ip}, expiry={$post_timestamp} WHERE ban_id='{$posted_ban_id}' LIMIT 1"
427 - "SELECT user_name FROM {$CONFIG['TABLE_BANNED']} WHERE user_name = '{$post_user_name}' AND brute_force = 0 LIMIT 1"
433 - "SELECT email FROM {$CONFIG['TABLE_BANNED']} WHERE email = '{$post_email}' AND brute_force = 0 LIMIT 1"
439 - "SELECT ip_addr FROM {$CONFIG['TABLE_BANNED']} WHERE ip_addr = '{$post_ip}' AND brute_force = 0 LIMIT 1"
460 - "INSERT INTO {$CONFIG['TABLE_BANNED']} (user_id, user_name, email, ip_addr, expiry) VALUES ({$post_user_id}, '{$post_user_name}', '{$post_email}', {$post_ip}, {$post_timestamp})"
467 - "DELETE FROM {$CONFIG['TABLE_COMMENTS']} WHERE msg_id = $comm_id"
473 - "DELETE FROM {$CONFIG['TABLE_COMMENTS']} WHERE author_id = $post_user_id"
500 - "SELECT user_name FROM {$CONFIG['TABLE_USERS']} WHERE user_id = '$new_ban_user_id' LIMIT 1"
526 - "SELECT msg_author, msg_hdr_ip, msg_raw_ip FROM {$CONFIG['TABLE_COMMENTS']} WHERE msg_id = $comm_id"

[cuppermine.inc.php]


[]
[]
[]
[][]