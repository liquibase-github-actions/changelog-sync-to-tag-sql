# Liquibase Changelog Sync To Tag Sql Action
Official GitHub Action to run Liquibase Changelog Sync To Tag Sql in your GitHub Action Workflow. For more information on how changelog sync to tag sql works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Changelog Sync To Tag Sql
Output the raw SQL used by Liquibase when running changelogSyncToTag
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/changelog-sync-to-tag-sql@v4.23.0
  with:
    # The root changelog file
    # string
    # Required
    changelogFile: ""

    # Tag ID to execute changelogSync to
    # string
    # Required
    tag: ""

    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # 
    # string
    # Optional
    changelogParameters: ""

    # Context string to use for filtering
    # string
    # Optional
    contexts: ""

    # 
    # string
    # Optional
    database: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Label expression to use for filtering
    # string
    # Optional
    labelFilter: ""

    # Control whether names of objects in the default catalog are fully qualified or not. If true they are. If false, only objects outside the default catalog are fully qualified
    # bool
    # Optional
    outputDefaultCatalog: ""

    # Control whether names of objects in the default schema are fully qualified or not. If true they are. If false, only objects outside the default schema are fully qualified
    # bool
    # Optional
    outputDefaultSchema: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # 
    # bool
    # Optional
    skipDatabaseStep: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase changelog sync to tag sql action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/changelog-sync-to-tag-sql@v4.23.0
    with:
      changelogFile: ""
      tag: ""
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
