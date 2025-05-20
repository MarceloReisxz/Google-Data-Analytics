# Google Data Analytics Capstone: Cyclistic Case Study
Estudo de caso realizado no curso: [Google Data Analytics Professional Certificate](https://www.coursera.org/professional-certificates/google-data-analytics)

## 📌 Introdução
Bem-vindo ao estudo de caso de análise do sistema de compartilhamento de bicicletas da Cyclistic! Neste estudo de caso, você trabalha para uma empresa fictícia, a Cyclistic, junto com alguns membros-chave da equipe. Para responder às perguntas de negócio, siga as etapas do processo de análise de dados: Perguntar, Preparar, Processar, Analisar, Compartilhar e Agir.

Data Source: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) - Usado os dados de 04/2024 a 04/2025 - Quantidade de linhas: 5305245

---

## 🧩 Cenário
Você é um analista de dados júnior que trabalha na equipe de análise de marketing da Cyclistic, uma empresa de compartilhamento de bicicletas em Chicago. O diretor de marketing acredita que o sucesso futuro da empresa depende de maximizar o número de assinaturas anuais. Portanto, sua equipe deseja entender como os ciclistas casuais e os membros anuais utilizam as bicicletas da Cyclistic de maneira diferente. A partir dessas descobertas, sua equipe irá desenvolver uma nova estratégia de marketing para converter ciclistas casuais em membros anuais. No entanto, primeiro, os executivos da Cyclistic devem aprovar suas recomendações, por isso elas precisam estar fundamentadas em insights de dados convincentes e visualizações profissionais.

---

## ⚙️ Preparar e Processar
- Criação do banco SQLite com importação dos dados e remoção de duplicatas.
- Criação das colunas `ride_length_minutes` e `day_of_week`.
- Remoção de registros com campos obrigatórios nulos ou vazios, resultando em **3.766.081** linhas.
- Remoção de registros com `ride_length_minutes < 1`, resultando em **3.747.846** linhas finais.

---

## 📊 Analisar
Explorei os dados inicialmente analisando a quantidade de registros por tipo de usuário (member e casual), identificando o perfil dos usuários presentes no conjunto de dados. Em seguida, realizei a distribuição dos tipos de bicicletas utilizadas por cada tipo de usuário, o que permitiu observar preferências distintas entre membros e usuários casuais. Também analisei a distribuição das viagens ao longo da semana, destacando os dias com maior e menor volume de uso. Por fim, calculei a duração média das viagens para cada tipo de usuário, o que forneceu insights sobre o comportamento de uso entre os diferentes perfis de ciclistas.

---

## 📈 Compartilhar
Data Visualizations: [Tableau](https://public.tableau.com/views/CaseStudyCyclistic_17477742416860/BikeTypeDistributionbyUserType?:language=pt-BR&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
![Image](https://github.com/user-attachments/assets/a3785d64-e505-49a7-ba59-d94aeb45494a)
![Image](https://github.com/user-attachments/assets/de73c837-2488-432b-8c62-1d249bb43ebb)

---

## 🚀 Agir
Com base na exploração e análise dos dados, algumas estratégias de marketing podem ser adotadas para aumentar o engajamento e a conversão de ciclistas casuais em membros, bem como incentivar maior uso do serviço. As recomendações são:

- Ofertas direcionadas para fins de semana: Os ciclistas casuais apresentam maior atividade durante os fins de semana. Portanto, uma estratégia eficaz seria oferecer planos ou assinaturas específicas para esse período, tornando a adesão mais atrativa para esse perfil de usuário.
- Foco fora do tipo de bicicleta: A distribuição do uso por tipo de bicicleta é relativamente equilibrada entre membros e ciclistas casuais. Sendo assim, o tipo de bicicleta não representa um fator decisivo de diferenciação, e estratégias de marketing não devem priorizar essa variável.
- Promoções com base na duração da viagem: Ciclistas casuais tendem a realizar viagens mais longas do que os membros. Dessa forma, oferecer descontos ou recompensas para passeios de maior duração pode incentivar ainda mais o uso por esse grupo e estimular os membros a prolongarem suas viagens.
