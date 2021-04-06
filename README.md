# projects

Create a `project.yaml` file containing the list of projects to create
```yaml
projects:
  - name: "zuma"
    id: "zuma-20210406"
  - name: "monte"
    id: "monte-20210406"
```

Run with:
`terraform init -backend-config=organization=${TFC_ORG_NAME} -backend-config=token=${TFC_TOKEN}`
