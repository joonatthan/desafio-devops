**Desafio:**

Estamos testando sua capacidade de implementar infraestrutura automatizada moderna, bem como conhecimentos gerais sobre administração de sistemas. Na sua solução, você deve enfatizar a legibilidade, a manutenção e as metodologias de DevOps.

- **1** - Criar um Dockerfile para rodar uma aplicação a sua escolha. Recomendamos o NodeJS do diretório /app.

- **2** - Criar um Pipeline com os passos abaixo(Checkout/Test/Deploy). Recomendamos CircleCI.

    - **2.1** - Checkout -> Checkout do Código

    - **2.2** - Test -> Teste com output "Fake test" ou o teste da sua aplicação.

    - **2.3** - Deploy -> Criar um script para implementar de forma automatizada a aplicação. Deploy deve ser feito via pipeline no local de sua escolha. Recomendamos AWS (EC2, ECS, Fargate, Beanstalk, etc).

- **3** - Criar a Infraestrurura como Código. Recomendamos terraform.

- **4** - Disponibilizar uma URL/IP com o retorno do Aplicação "Hello World! {hostname}!".