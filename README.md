# Comandos Terraform

#### Principais comandos:

- Iniciar terraform: `terraform init`
- Verificar o plano de execução: `terraform plan`
- Aplicar as mudanças: `terraform apply`
- Destruir a infraestrutura: `terraform destroy`

#### Comandos CLI com flags (terraform plan / apply / destroy):

- `-var='key=value'` Define uma variável na linha de comando.
- `TF_VAR_key=value` Define uma variável de ambiente para o Terraform.
- `-var-file='file.tfvars'` Carrega variáveis de um arquivo específico.
- `-out=tfplan` Salva o plano de execução em um arquivo para aplicação posterior.
- `-auto-approve` Aplica mudanças sem solicitar confirmação (útil para scripts automatizados).

## Ordem de execução das variáveis:

1. Variáveis de ambiente
2. terraform.tfvars
3. terraform.tfvars.json (se presente)
4. Qualquer arquivo com a extensão `.auto.tfvars` ou `.auto.tfvars.json` (se presente)
5. `-var` e `-var-file` no CLI (se presente)

\* _Os últimos valores sobrescrevem os primeiros._
