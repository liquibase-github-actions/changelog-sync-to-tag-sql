# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.23.2
COPY changelog_sync_to_tag_sql.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
