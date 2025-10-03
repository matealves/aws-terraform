# Comandos Terraform

#### Principais comandos:

- `terraform init`: Iniciar terraform
- `terraform plan`: Verificar o plano de execução
- `terraform plan -out=tfplan`: Verificar o plano de execução e salvar em um arquivo para aplicação posterior
- `terraform apply`: Aplicar as mudanças
- `terraform destroy`: Destruir a infraestrutura

#### Comandos CLI com flags:

Options: `plan`, `apply`, `destroy`

- `terraform #option -var='key=value'`: Define uma variável na linha de comando.
- `TF_VAR_key=value terraform #option`: Define uma variável de ambiente para o Terraform.
- `terraform #option -var-file='file.tfvars'`: Carrega variáveis de um arquivo específico.
- `terraform #option -auto-approve`: Aplica mudanças sem solicitar confirmação (útil para scripts automatizados).

## Ordem de execução das variáveis:

1. Variáveis de ambiente
2. terraform.tfvars
3. terraform.tfvars.json (se presente)
4. Qualquer arquivo com a extensão `.auto.tfvars` ou `.auto.tfvars.json` (se presente)
5. `-var` e `-var-file` no CLI (se presente)

\* _Os últimos valores sobrescrevem os primeiros._
