create table if not exists deployment_event
(
	deployment_pk int auto_increment
		primary key,
	deployment_timestamp timestamp null,
	deployed_by varchar(255) null,
	deployment_username varchar(255) null,
	deployment_tag varchar(255) null,
	deployer_notes varchar(999) null,
	source_tenant varchar(255) null,
	target_tenant varchar(255) null,
	deployment_event varchar(255) null
);

create table if not exists deployment_item
(
	deployment_item_pk int auto_increment
		primary key,
	item_type varchar(255) null,
	item_id varchar(255) null,
	item_name varchar(999) null,
	last_modified_by varchar(255) null,
	last_modified_timestamp timestamp null,
	source_item_version_id varchar(255) null,
	item_version_comment varchar(999) null,
	flow_token varchar(255) null,
	player_code_url varchar(999) null,
	deployment_event varchar(255) null,
	final_item_version_id varchar(255) null
);

