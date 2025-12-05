# 🚀 CobPanel - Sistema de Cobrança Inteligente

<div align="center">
  <img src="frontend/public/images/logo/logo.png" alt="CobPanel Logo" width="200"/>
  
  [![Node.js](https://img.shields.io/badge/node.js-%3E%3D18.0.0-brightgreen)](https://nodejs.org/)
  [![Next.js](https://img.shields.io/badge/next.js-13.0+-blue)](https://nextjs.org/)
  [![TypeScript](https://img.shields.io/badge/typescript-4.9+-blue)](https://www.typescriptlang.org/)
  [![License](https://img.shields.io/badge/license-Private-red)](https://github.com/AgilizaWeb/CobPanel)
  
  **Sistema inteligente de cobrança e gestão financeira com automação avançada**
  
  [🛒 Comprar Licença](https://painel.suporteeficiente.com.br/?view=register&role=cliente) 
  [💼 Programa de Revenda](https://painel.suporteeficiente.com.br/?view=register&role=revenda) • [📧 Suporte](https://chat.whatsapp.com/JM4oOAc9cxH8WzspShRz9q?mode=hqrt1)
  
</div>

---

## 📋 Sobre o Projeto

O **CobPanel** é uma solução completa e profissional de gestão empresarial desenvolvida para empresas que buscam eficiência na gestão comercial e financeira. Com tecnologia moderna e recursos avançados de automação, o sistema permite gerenciar vendas, estoque, fornecedores, clientes e processos de pagamento de forma integrada e automatizada.

### 🎯 Diferenciais Competitivos

- ✅ **Gestão Comercial Completa** - Controle total de vendas, estoque, produtos e fornecedores
- ✅ **Sistema Multi-empresa** - Gerencie múltiplas empresas em uma única plataforma
- ✅ **Portal do Cliente** - Painel exclusivo para clientes acessarem suas contas
- ✅ **Gateways de Pagamento** - Integração nativa com Asaas, Cora, Efi e Mercado Pago
- ✅ **API RESTful Completa** - Integre com qualquer sistema através de endpoints robustos
- ✅ **Dashboard Analytics** - Relatórios detalhados e métricas em tempo real para tomada de decisão
- ✅ **WhatsApp Integration** - Conecte-se via Evolution API para comunicação automatizada
- ✅ **Segurança Avançada** - Código compilado e criptografado para máxima proteção

---

## ✨ Principais Funcionalidades

### 🛍️ Gestão Comercial

- **Gestão de Vendas** - Controle completo do processo comercial
  - Criação e acompanhamento de vendas
  - Gestão de vendedores e comissões
  - Relatórios de performance de vendas
  - Integração com gateways de pagamento
  
- **Sistema de Cotações** - Gerencie cotações e orçamentos
  - Criação de cotações profissionais
  - Conversão de cotações em vendas
  - Acompanhamento de status
  - Histórico completo de cotações

### 📦 Gestão de Estoque e Produtos

- **Controle de Estoque** - Monitore produtos e movimentações
  - Movimentações de entrada e saída
  - Controle por categorias
  - Alertas de estoque baixo
  - Relatórios de movimentação
  
- **Gestão de Produtos** - Cadastre e organize seus produtos
  - Categorização de produtos
  - Controle de preços e margens
  - Gestão de fornecedores
  - Upload de imagens e documentos

### 🤝 Gestão de Relacionamentos

- **Gestão de Clientes** - Centralize informações dos clientes
  - Cadastro completo de clientes
  - Histórico de compras e interações
  - Segmentação de clientes
  - Sistema de tickets para suporte

- **Gestão de Fornecedores** - Organize sua cadeia de suprimentos
  - Cadastro de fornecedores
  - Categorização por especialidade
  - Histórico de compras
  - Controle de contas a pagar

### 👤 Portal do Cliente

- **Acesso Independente para Clientes** - Proporcione autonomia aos seus clientes
  - Painel exclusivo para cada cliente
  - Visualização de contas em aberto
  - Histórico completo de compras
  - Download de boletos e comprovantes
  - Acompanhamento de status de pedidos
  - Interface responsiva e intuitiva

### 📊 Analytics e Relatórios

- **Dashboard Completo** - Visualize métricas importantes em tempo real
  - Tickets abertos/fechados
  - Tempo médio de resposta
  - Taxa de satisfação
  - Gráficos e estatísticas detalhadas

- **Relatórios Avançados** - Exporte dados para análise
  - Relatórios de atendimento
  - Histórico completo de conversas
  - Métricas de performance por atendente

### 💳 Gateways de Pagamento

- **Múltiplas Opções de Pagamento** - Aceite pagamentos via PIX e boleto
  - **Asaas** - PIX e boleto bancário
  - **Cora** - PIX e transferências
  - **Efi (Gerencianet)** - PIX e boletos
  - **Mercado Pago** - PIX e boleto
  - Webhooks automáticos para confirmação
  - Conciliação automática de pagamentos

### 🔐 Segurança e Confiabilidade

- **Autenticação JWT** - Sistema seguro de autenticação
- **Multi-tenant** - Isolamento completo entre empresas
- **Backup Automático** - Proteção de dados garantida

---

## 🛠️ Tecnologias Utilizadas

### Backend
- **Node.js** - Runtime JavaScript de alta performance
- **Express.js** - Framework web robusto e minimalista
- **Prisma** - ORM moderno para MySQL com type-safety
- **MySQL** - Banco de dados relacional confiável
- **Socket.io** - Comunicação em tempo real
- **JWT** - Autenticação segura via tokens
- **Multer** - Upload de arquivos multipart
- **Node-cron** - Agendamento de tarefas automatizadas
- **Axios** - Cliente HTTP para integrações

### Frontend
- **Next.js 15** - Framework React com SSR/SSG
- **React 19** - Biblioteca para interfaces reativas
- **TypeScript** - Tipagem estática para maior segurança
- **TailwindCSS 4.0** - Framework CSS utilitário moderno
- **Socket.io Client** - Atualizações em tempo real
- **ApexCharts** - Biblioteca de gráficos interativos
- **React Hook Form** - Formulários performáticos
- **Axios** - Requisições HTTP para a API

---

## 🚀 Instalação

### Pré-requisitos

- **Node.js** >= 18.0.0
- **MySQL** (banco de dados obrigatório)
- **Servidor Linux** (recomendado Ubuntu 20.04+)
- **Domínio** com SSL configurado (opcional para produção)

### 1. Instalação da Evolution API (Opcional)

Para usar integração com WhatsApp, instale a Evolution API em um servidor separado:

```bash
# Clone o repositório da Evolution API
git clone https://github.com/EvolutionAPI/evolution-api.git
cd evolution-api

# Siga as instruções de instalação da Evolution API
# Configure a Evolution API em um subdomínio (ex: evolution.seudominio.com)
```

**Nota:** A integração com WhatsApp é opcional e pode ser configurada posteriormente.

### 2. Clone e Instalação do Projeto

```bash
# Clone o repositório
git clone https://github.com/AgilizaWeb/CobPanel.git
```

### 2.1 Instalação do Backend
```bash

cd CobPanel/backend

# Instale as dependências
npm install

# Configure as variáveis de ambiente
# Copie o arquivo de exemplo e edite conforme sua configuração:
cp .env.example .env
nano .env

# Edite o arquivo .env com suas configurações:
# DATABASE_URL="mysql://usuario:senha@localhost:3306/cobpanel"
# JWT_SECRET="seu_jwt_secret_super_seguro"
# PORT=5555

# Gere o cliente Prisma
npm run db:generate

# Execute as migrations para criar as tabelas
npm run db:migrate

# Execute os seeds para dados iniciais (opcional)
npm run db:seed
```

### 2.2 Instalação do Frontend
```bash
cd ../frontend

# Instale as dependências
npm install

# Copie o arquivo de configuração para o diretório público
cp config.json public/config.json

# Configure as URLs e settings
nano public/config.json
```

**Nota:** O frontend é uma aplicação Next.js que utiliza `config.json` para configurações dinâmicas. 

**Estrutura do config.json:**
```json
{
  "appName": "CobPanel",
  "usarLandingPage": true,
  "apiEnv": "production",
  "backendUrl": "https://seudominio.com/api"
}
```

Edite o arquivo `public/config.json` conforme suas necessidades de configuração.

### 3. Configuração do Nginx (Recomendado)

Configuração otimizada com proxy reverso para Backend e Frontend, com suporte completo para Socket.IO:

```nginx
    server {
        listen 80;
        server_name seudominio.com;
        
        # Frontend - Raiz do domínio
        location / {
            proxy_pass http://localhost:5533;  # Porta do frontend Next.js
            proxy_http_version 1.1;
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection "upgrade";
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-Proto $scheme;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Host $host;
            proxy_set_header X-Forwarded-Server $host;
            proxy_cache_bypass $http_upgrade;
        }
        
        # Socket.IO - DEVE vir antes de /api para ter prioridade
        location /socket.io {
            proxy_pass http://localhost:5555/socket.io;
            proxy_http_version 1.1;
            
            # Headers essenciais para WebSocket/Socket.IO
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection "upgrade";
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            proxy_set_header X-Forwarded-Host $host;
            proxy_set_header X-Forwarded-Server $host;
            
            # Cache bypass para WebSocket
            proxy_cache_bypass $http_upgrade;
            
            # Timeouts para conexões WebSocket persistentes
            proxy_read_timeout 300s;
            proxy_connect_timeout 75s;
            proxy_send_timeout 300s;
            
            # Buffer settings para WebSocket
            proxy_buffering off;
        }
        
        # Backend UPLOADS - Proxy reverso
        location /uploads/ {
            proxy_pass http://localhost:5555/uploads/;
            proxy_http_version 1.1;
            
            # Headers padrão
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            proxy_set_header X-Forwarded-Host $host;
            proxy_set_header X-Forwarded-Server $host;
            
            # Headers para WebSocket (caso alguma rota precise)
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection "upgrade";
            proxy_cache_bypass $http_upgrade;
            
            # Timeouts
            proxy_read_timeout 300s;
            proxy_connect_timeout 75s;
        }
        
        # Backend API - Proxy reverso
        location /api/v1/ {
            proxy_pass http://localhost:5555/api/v1/;
            proxy_http_version 1.1;
            
            # Headers padrão
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            proxy_set_header X-Forwarded-Host $host;
            proxy_set_header X-Forwarded-Server $host;
            
            # Headers para WebSocket (caso alguma rota precise)
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection "upgrade";
            proxy_cache_bypass $http_upgrade;
            
            # Timeouts
            proxy_read_timeout 300s;
            proxy_connect_timeout 75s;
        }
        
        # Evolution API - Proxy reverso (opcional)
        # Descomente se estiver usando Evolution API
        # location /evolution {
        #     proxy_pass http://localhost:8081;  # Porta da Evolution API
        #     proxy_http_version 1.1;
        #     proxy_set_header Upgrade $http_upgrade;
        #     proxy_set_header Connection "upgrade";
        #     proxy_set_header Host $host;
        #     proxy_set_header X-Real-IP $remote_addr;
        #     proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        #     proxy_set_header X-Forwarded-Proto $scheme;
        #     proxy_cache_bypass $http_upgrade;
        #     
        #     # Reescrever /evolution para remover o prefixo
        #     rewrite ^/evolution/(.*)$ /$1 break;
        # }
    }
```

**Nota Importante:** 
- A location `/socket.io` **e** `/uploads/` **DEVE** vir antes de `/api/` para ter prioridade
- Esta configuração é compatível com todas as versões do Nginx

**Importante:** 
- Configure as URLs no arquivo `config.json` do frontend
- Configure a URL do backend no `config.json`: `"backendUrl": "https://seudominio.com/api"`
- Ajuste o `"apiEnv"` para `"production"` em produção
- Se usar Evolution API, configure a URL apropriada no .env do backend
- **Socket.IO**: A configuração acima já inclui suporte completo para Socket.IO através do proxy reverso

### 4. Iniciar o Sistema

#### Usando PM2 (Recomendado)

```bash
# Instale o PM2 globalmente
npm install -g pm2

# Navegue até a raiz do projeto
cd /caminho/para/CobPanel

# Inicie todos os serviços usando o ecosystem.config.js
pm2 start ecosystem.config.js

# Salve a configuração para iniciar automaticamente com o sistema
pm2 save

# Configure o PM2 para iniciar no boot do sistema
pm2 startup
# Execute o comando que será exibido no terminal
```

**Nota sobre Portas:**
- **Backend**: Roda na porta configurada no `.env` (padrão: 5555)
- **Frontend**: Roda na porta 5533 (configurada no script `start:prod` do `package.json`)
- Para alterar a porta do frontend, edite o script `start:prod` no arquivo `frontend/package.json`

#### Usando Node diretamente

```bash
# Backend
cd backend
node -r bytenode dist/server.jsc

# Frontend  
cd frontend
npm run start:prod
# ou
npm run start -p 5533
```

---

## 📖 Primeiros Passos

### 1. Acesse o Sistema

Abra seu navegador e acesse: `https://seudominio.com`

### 2. Crie sua Conta de Administrador

Na primeira execução, você será redirecionado para criar sua conta de administrador.

### 3. Configure Gateways de Pagamento

1. Acesse **Gateways** no menu
2. Clique em **Adicionar Gateway**
3. Escolha o gateway (Asaas, Cora, Efi, Mercado Pago)
4. Configure as credenciais da API
5. Teste a conexão e ative o gateway

### 4. Cadastre Produtos e Fornecedores

1. Acesse **Fornecedores** no menu
2. Cadastre seus fornecedores principais
3. Acesse **Produtos** no menu
4. Cadastre seus produtos e categorias
5. Configure preços e margens de lucro

### 5. Configure sua Equipe

1. Acesse **Usuários** no menu
2. Adicione vendedores e gestores
3. Configure permissões por perfil
4. Defina metas e comissões
5. Configure notificações e alertas

### 6. Ative o Portal do Cliente (Opcional)

1. Configure quais clientes terão acesso
2. Defina permissões de visualização
3. Personalize a interface do portal
4. Envie credenciais de acesso para os clientes
5. Monitore o uso através dos relatórios

---

## 🔑 Licenciamento

Este sistema é distribuído sob licença comercial. Para uso em produção, é necessário adquirir uma licença válida.

### 💳 Comprar Licença

- **Licença por Domínio**: Válida por 1 ano por domínio
- **Programa de Revenda**: Oportunidade de revender o sistema

**Acesse:** [https://painel.suporteeficiente.com.br](https://painel.suporteeficiente.com.br)

### 📋 Benefícios da Licença

- ✅ Suporte técnico prioritário
- ✅ Atualizações e correções de segurança

---

## 🎓 Recursos Principais em Detalhes

### 📊 Sistema de Relatórios

Tenha controle total sobre seu negócio com relatórios detalhados:

- **Relatórios de Vendas**: Performance por período, vendedor e produto
- **Análise de Estoque**: Produtos mais vendidos e estoque atual
- **Gestão Financeira**: Contas a pagar, receber e fluxo de caixa
- **Performance da Equipe**: Vendas por vendedor e comissões

### 🔗 API e Integrações

Conecte o CobPanel com outros sistemas:

- **API RESTful Completa**: Endpoints para todas as funcionalidades
- **Webhooks**: Receba notificações em tempo real
- **Gateways de Pagamento**: Integração nativa com principais provedores
- **Evolution API**: Conecte WhatsApp para comunicação automatizada

### 📱 Sistema Multi-empresa

Gerencie múltiplas empresas em uma única instalação:

- **Isolamento Completo**: Dados separados por empresa
- **Configurações Independentes**: Cada empresa com suas configurações
- **Usuários Específicos**: Acesso controlado por empresa
- **Relatórios Consolidados**: Visão geral de todas as empresas

---

### 🐛 Reportar Problemas

Para reportar bugs, solicitar funcionalidades ou obter suporte técnico, utilize o sistema de tickets do painel. Nossa equipe está sempre pronta para ajudar.

---

## 🔄 Atualizações e Manutenção

### 📦 Política de Atualizações

O sistema recebe **atualizações regulares** com novas funcionalidades, correções de bugs e melhorias de segurança. Clientes com licença ativa recebem:

- ✅ **Atualizações de Segurança**: Correções críticas e patches de segurança
- ✅ **Novas Funcionalidades**: Melhorias e novos recursos constantemente adicionados
- ✅ **Otimizações de Performance**: Melhorias contínuas na velocidade e eficiência
- ✅ **Compatibilidade**: Garantia de compatibilidade com novas versões de dependências

### 🔄 Processo de Atualização

Para atualizar o sistema:

```bash
# No diretório do projeto
git pull

# Execute o deploy das migrations (IMPORTANTE)
cd backend
npm run db:deploy

# Reinicie os serviços
pm2 restart all
```

**Importante:** Sempre execute `npm run db:deploy` após atualizar para garantir que o banco de dados está sincronizado com as últimas alterações. Use `npm run db:generate` se necessário para regenerar o cliente Prisma.

 Sempre confira as releases para saber se precisa de comandos/cuidados extras para a atualização

### ⚠️ Recomendações Importantes

- **Backup Antes de Atualizar**: Sempre faça backup do banco de dados antes de atualizar
- **Ambiente de Teste**: Teste atualizações em ambiente de desenvolvimento primeiro
- **Horário de Baixo Tráfego**: Execute atualizações em horários de menor movimento
- **Monitoramento**: Acompanhe os logs após atualizações para garantir que tudo está funcionando

### 📅 Ciclo de Atualizações

- **Atualizações de Segurança**: Liberadas imediatamente quando necessário
- **Atualizações de Funcionalidades**: Lançadas regularmente conforme desenvolvimento
- **Atualizações Maiores**: Comunicadas com antecedência para planejamento

---

## 🏆 Por que Escolher o CobPanel?

✅ **Tecnologia de Ponta** - Desenvolvido com as melhores práticas e tecnologias modernas  
✅ **Alta Performance** - Otimizado para lidar com milhares de operações simultâneas  
✅ **Segurança** - Código compilado e ofuscado para máxima proteção  
✅ **Escalabilidade** - Arquitetura preparada para crescer com seu negócio  
✅ **ROI Comprovado** - Aumente a recuperação de créditos em até 300%  
✅ **Suporte Profissional** - Equipe dedicada para ajudar você a ter sucesso  
✅ **Atualizações Constantes** - Sistema sempre evoluindo com novas funcionalidades  

---

## 👥 Desenvolvedor

O **CobPanel** é desenvolvido por:

- [**Alisson Santos**](https://github.com/AgilizaWeb) - Desenvolvedor Full Stack

---

<div align="center">
  
  **Desenvolvido com ❤️ para transformar a gestão de cobrança**
  
  <!-- [🛒 Comprar Licença Agora](https://painel.suporteeficiente.com.br) --> 
  [💼 Seja um Revendedor](https://painel.suporteeficiente.com.br/?view=register&role=revenda)
  
  ⭐ **Revolucione sua cobrança hoje mesmo!**
  
</div>
