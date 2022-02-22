CREATE TABLE game_project_platform (
    game_project_platform_id INT,
    game_project_platform_name TEXT,
    PRIMARY KEY (game_project_platform_id),
);

CREATE TABLE game_project_documentation (
    game_project_documentation_id INT,
    game_project_business_plan TEXT,
    game_project_design_document TEXT,
    game_project_vision TEXT,
    PRIMARY KEY (game_project_documentation_id),
);

CREATE TABLE game_project (
    game_project_id INT,
    game_project_name TEXT,
    game_project_description TEXT,
    game_project_documentation_id INT,
    PRIMARY KEY (game_project_id),
);

CREATE TABLE platform_to_game_object (
    game_project_platform_id INT,
    game_project_id INT,
    PRIMARY KEY (game_project_platform_id, game_project_id),
);

CREATE TABLE game_asset_type (
    game_asset_type_id INT,
    game_asset_type_name TEXT,
    PRIMARY KEY (game_asset_type_id),
);

CREATE TABLE game_asset (
    game_asset_id INT,
    game_asset_name TEXT,
    game_asset_type_id INT,
    game_asset_description TEXT,
    game_project_id INT,
    PRIMARY KEY (game_asset_id),
);

CREATE TABLE game_project_version (
    game_project_version_id INT,
    game_project_version_hash TEXT,
    game_project_version_major INT,
    game_project_version_minor INT,
    game_project_version_patch INT,
    game_project_version_metadata TEXT,
    game_project_id INT,
    PRIMARY KEY (game_project_version_id),
);

CREATE TABLE officer_role (
    officer_role_id INT,
    officer_role_name TEXT,
    PRIMARY KEY (officer_role_id),
);

CREATE TABLE test_level (
    test_level_id INT,
    test_level_name TEXT,
    PRIMARY KEY (test_level_id),
);

CREATE TABLE test_document (
    test_document_id INT,
    test_level_id INT,
    test_document_data TEXT,
    PRIMARY KEY (test_document_id),
);

CREATE TABLE organization_type (
    organization_type_id INT,
    organization_type_name TEXT,
    PRIMARY KEY (organization_type_id),
);

CREATE TABLE organization (
    organization_id INT,
    organization_name TEXT,
    organization_type_id INT,
    organization_description TEXT,
    test_document_id INT,
    PRIMARY KEY (organization_id),
);

CREATE TABLE organization_to_game_project (
    organization_id INT,
    game_project_id INT,
    PRIMARY KEY (organization_id, game_project_id),
);

CREATE TABLE officer (
    officer_id INT,
    officer_name TEXT,
    officer_role_id INT,
    organization_id INT,
    PRIMARY KEY (officer_id),
);

CREATE TABLE user (
    user_id INT,
    user_login TEXT,
    user_password_encrypted TEXT,
    officer_id INT,
    PRIMARY KEY (user_id),
);
