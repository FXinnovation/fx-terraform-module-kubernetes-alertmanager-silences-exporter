withCredentials(
  [
    usernamePassword(
      credentialsId: 'azure-fxinnovation-application',
      passwordVariable: 'client_secret',
      usernameVariable: 'client_id'
    ),
  ]
){
  fxTerraformWithUsernamePassword(
    testEnvironmentCredentialId:    'azure-fxinnovation-application',
    publishEnvironmentCredentialId: 'azure-fxinnovation-application',
    providerUsernameVariableName:   'client_id',
    providerPasswordVariableName:   'client_secret',
    initSSHCredentialId:            'gitea-fx_administrator-key',
    testPlanVars: [
      "'subscription_id=e469a261-e6fc-4363-94f1-3d8cdb259ec7'",
      "'tenant_id=219647b6-1ea6-409d-b9cc-0893cb535884'",
    ],
    publishPlanVars: [
      "'subscription_id=e469a261-e6fc-4363-94f1-3d8cdb259ec7'",
      "'tenant_id=219647b6-1ea6-409d-b9cc-0893cb535884'",
    ],
    inspecTarget:         'azure',
    inspecSubscriptionId: 'e469a261-e6fc-4363-94f1-3d8cdb259ec7',
    inspecTenantId:       '219647b6-1ea6-409d-b9cc-0893cb535884'
  )
}
