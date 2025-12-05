-- CreateTable
CREATE TABLE `Empresa` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `nome` VARCHAR(191) NOT NULL,
    `cpfCnpj` VARCHAR(191) NULL,
    `celular` VARCHAR(191) NULL,
    `cep` VARCHAR(191) NULL,
    `cidade` VARCHAR(191) NULL,
    `estado` VARCHAR(191) NULL,
    `bairro` VARCHAR(191) NULL,
    `rua` VARCHAR(191) NULL,
    `numero` VARCHAR(191) NULL,
    `vencimento` DATETIME(3) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Empresa_uuid_key`(`uuid`),
    INDEX `Empresa_vencimento_idx`(`vencimento`),
    UNIQUE INDEX `Empresa_cpfCnpj_key`(`cpfCnpj`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `nome` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `senha` VARCHAR(191) NOT NULL,
    `celular` VARCHAR(191) NOT NULL,
    `role` ENUM('SUPERADMIN', 'ADMIN', 'GESTOR', 'VENDEDOR', 'CLIENTE') NOT NULL,
    `token` VARCHAR(191) NOT NULL,
    `empresaId` INTEGER NULL,
    `clienteId` INTEGER NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `User_uuid_key`(`uuid`),
    UNIQUE INDEX `User_email_key`(`email`),
    UNIQUE INDEX `User_token_key`(`token`),
    UNIQUE INDEX `User_clienteId_key`(`clienteId`),
    INDEX `User_role_empresaId_idx`(`role`, `empresaId`),
    INDEX `User_clienteId_idx`(`clienteId`),
    INDEX `User_token_idx`(`token`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Cliente` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NULL,
    `celular` VARCHAR(191) NULL,
    `nascimento` DATETIME(3) NULL,
    `cpfCnpj` VARCHAR(191) NULL,
    `cep` VARCHAR(191) NULL,
    `bairro` VARCHAR(191) NULL,
    `rua` VARCHAR(191) NULL,
    `numero` VARCHAR(191) NULL,
    `complemento` VARCHAR(191) NULL,
    `cidade` VARCHAR(191) NULL,
    `estado` VARCHAR(191) NULL,
    `extras` JSON NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `Cliente_empresaId_nome_idx`(`empresaId`, `nome`),
    UNIQUE INDEX `Cliente_cpfCnpj_empresaId_key`(`cpfCnpj`, `empresaId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CategoriaProduto` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `CategoriaProduto_empresaId_idx`(`empresaId`),
    UNIQUE INDEX `CategoriaProduto_nome_empresaId_key`(`nome`, `empresaId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Produto` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `sku` VARCHAR(191) NOT NULL,
    `nome` VARCHAR(191) NOT NULL,
    `descricao` VARCHAR(191) NOT NULL,
    `valor` DECIMAL(10, 2) NOT NULL,
    `estoque` INTEGER NOT NULL,
    `categoriaId` INTEGER NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `Produto_empresaId_sku_idx`(`empresaId`, `sku`),
    INDEX `Produto_categoriaId_idx`(`categoriaId`),
    INDEX `Produto_estoque_idx`(`estoque`),
    UNIQUE INDEX `Produto_sku_empresaId_key`(`sku`, `empresaId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MovimentoEstoque` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tipo` ENUM('ENTRADA', 'SAIDA') NOT NULL,
    `quantidade` INTEGER NOT NULL,
    `valorUnitario` DECIMAL(10, 2) NOT NULL,
    `data` DATETIME(3) NOT NULL,
    `produtoId` INTEGER NOT NULL,
    `fornecedorId` INTEGER NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `MovimentoEstoque_empresaId_produtoId_idx`(`empresaId`, `produtoId`),
    INDEX `MovimentoEstoque_data_idx`(`data`),
    INDEX `MovimentoEstoque_tipo_idx`(`tipo`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CategoriaFornecedor` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `CategoriaFornecedor_empresaId_nome_idx`(`empresaId`, `nome`),
    UNIQUE INDEX `CategoriaFornecedor_nome_empresaId_key`(`nome`, `empresaId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Fornecedor` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `cpfCnpj` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NULL,
    `celular` VARCHAR(191) NULL,
    `observacoes` VARCHAR(191) NULL,
    `categoriaId` INTEGER NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `Fornecedor_empresaId_cpfCnpj_idx`(`empresaId`, `cpfCnpj`),
    INDEX `Fornecedor_categoriaId_idx`(`categoriaId`),
    UNIQUE INDEX `Fornecedor_cpfCnpj_empresaId_key`(`cpfCnpj`, `empresaId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Cotacao` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `nome` VARCHAR(191) NOT NULL,
    `descricao` VARCHAR(191) NULL,
    `dataAbertura` DATETIME(3) NOT NULL,
    `dataFechamento` DATETIME(3) NULL,
    `status` ENUM('EM_ANDAMENTO', 'FECHADA') NOT NULL,
    `tipo` ENUM('IMEDIATA', 'PROGRAMADA') NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Cotacao_uuid_key`(`uuid`),
    INDEX `Cotacao_empresaId_status_idx`(`empresaId`, `status`),
    INDEX `Cotacao_dataAbertura_idx`(`dataAbertura`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ItemCotacao` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fornecedorId` INTEGER NOT NULL,
    `produtoId` INTEGER NOT NULL,
    `valorUnitario` DECIMAL(10, 2) NOT NULL,
    `quantidade` INTEGER NOT NULL,
    `aprovada` BOOLEAN NOT NULL,
    `vencedora` BOOLEAN NOT NULL,
    `cotacaoId` INTEGER NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `ItemCotacao_cotacaoId_idx`(`cotacaoId`),
    INDEX `ItemCotacao_fornecedorId_produtoId_idx`(`fornecedorId`, `produtoId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ContaPagar` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `observacao` VARCHAR(191) NULL,
    `valor` DECIMAL(10, 2) NOT NULL,
    `vencimento` DATETIME(3) NOT NULL,
    `status` ENUM('PENDENTE', 'PAGO') NOT NULL,
    `fornecedorId` INTEGER NULL,
    `produtoId` INTEGER NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `ContaPagar_empresaId_idx`(`empresaId`),
    INDEX `ContaPagar_vencimento_idx`(`vencimento`),
    INDEX `ContaPagar_status_idx`(`status`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `VendaProduto` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `produtoId` INTEGER NOT NULL,
    `quantidade` INTEGER NOT NULL,
    `valorUnitario` DECIMAL(10, 2) NOT NULL,
    `valorTotal` DECIMAL(10, 2) NOT NULL,
    `vencimento` DATETIME(3) NOT NULL,
    `vendaId` INTEGER NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `VendaProduto_empresaId_produtoId_idx`(`empresaId`, `produtoId`),
    INDEX `VendaProduto_vendaId_idx`(`vendaId`),
    INDEX `VendaProduto_vencimento_idx`(`vencimento`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Venda` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `valor` DECIMAL(10, 2) NOT NULL,
    `status` ENUM('PENDENTE', 'PAGO') NULL DEFAULT 'PENDENTE',
    `recorrencia` INTEGER NULL DEFAULT 0,
    `quantidadeRecorrencia` INTEGER NULL DEFAULT 0,
    `valorTotal` DECIMAL(10, 2) NOT NULL,
    `inicio` DATETIME(3) NOT NULL,
    `fim` DATETIME(3) NOT NULL,
    `vendedorId` INTEGER NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `clienteId` INTEGER NOT NULL,
    `gatewayId` INTEGER NULL,
    `conexaoId` INTEGER NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Venda_uuid_key`(`uuid`),
    INDEX `Venda_empresaId_idx`(`empresaId`),
    INDEX `Venda_status_idx`(`status`),
    INDEX `Venda_vendedorId_idx`(`vendedorId`),
    INDEX `Venda_clienteId_idx`(`clienteId`),
    INDEX `Venda_inicio_fim_idx`(`inicio`, `fim`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `VendaFinal` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `valor` DECIMAL(10, 2) NOT NULL,
    `status` ENUM('PENDING', 'APPROVED', 'CANCELLED') NOT NULL,
    `id_payment` VARCHAR(191) NULL,
    `type` ENUM('PIX', 'BOLETO') NOT NULL,
    `copiacola` VARCHAR(191) NULL,
    `qrcode` TEXT NULL,
    `codigobarra` VARCHAR(191) NULL,
    `vencimento` DATETIME(3) NOT NULL,
    `dataPagamento` DATETIME(3) NULL,
    `vendaId` INTEGER NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `gatewayId` INTEGER NOT NULL,
    `conexaoId` INTEGER NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `VendaFinal_uuid_key`(`uuid`),
    INDEX `VendaFinal_empresaId_vendaId_idx`(`empresaId`, `vendaId`),
    INDEX `VendaFinal_status_idx`(`status`),
    INDEX `VendaFinal_vencimento_idx`(`vencimento`),
    INDEX `VendaFinal_type_idx`(`type`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Conexao` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `status` ENUM('open', 'connecting', 'close') NULL DEFAULT 'connecting',
    `numero` VARCHAR(191) NULL,
    `tokenId` VARCHAR(191) NOT NULL,
    `isDefault` BOOLEAN NOT NULL DEFAULT false,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Conexao_tokenId_key`(`tokenId`),
    INDEX `Conexao_empresaId_idx`(`empresaId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Mensagem` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mensagem` TEXT NOT NULL,
    `tipo` ENUM('A_VENCER', 'NO_DIA', 'VENCIDA', 'COMPROVANTE', 'MANUAL', 'FINALIZACAO') NOT NULL,
    `status` BOOLEAN NOT NULL,
    `hora` VARCHAR(191) NOT NULL,
    `dias` INTEGER NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `Mensagem_empresaId_idx`(`empresaId`),
    INDEX `Mensagem_tipo_status_idx`(`tipo`, `status`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Plano` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `valor` DECIMAL(10, 2) NOT NULL,
    `dias` INTEGER NOT NULL,
    `status` ENUM('ATIVO', 'INATIVO') NOT NULL DEFAULT 'ATIVO',
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `Plano_valor_idx`(`valor`),
    INDEX `Plano_status_idx`(`status`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CompraPlanoEmpresa` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `empresaId` INTEGER NOT NULL,
    `planoId` INTEGER NOT NULL,
    `status` ENUM('PENDENTE', 'PAGO') NULL DEFAULT 'PENDENTE',
    `valor` DECIMAL(10, 2) NOT NULL,
    `gatewayId` INTEGER NULL,
    `id_payment` VARCHAR(191) NULL,
    `copiacola` VARCHAR(191) NULL,
    `qrcode` TEXT NULL,
    `codigobarra` VARCHAR(191) NULL,
    `vencimento` DATETIME(3) NULL,
    `dataPagamento` DATETIME(3) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `CompraPlanoEmpresa_empresaId_planoId_idx`(`empresaId`, `planoId`),
    INDEX `CompraPlanoEmpresa_status_idx`(`status`),
    INDEX `CompraPlanoEmpresa_vencimento_idx`(`vencimento`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Gateway` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `gateway` ENUM('MERCADO_PAGO', 'OMIE', 'ASAAS', 'CORA', 'EFIPAY') NOT NULL,
    `nome` VARCHAR(191) NULL DEFAULT 'Default',
    `descricao` VARCHAR(191) NULL,
    `isDefault` BOOLEAN NULL DEFAULT false,
    `dados` JSON NOT NULL,
    `empresaId` INTEGER NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `Gateway_empresaId_idx`(`empresaId`),
    INDEX `Gateway_gateway_idx`(`gateway`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Notificacao` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `titulo` VARCHAR(191) NOT NULL,
    `mensagem` TEXT NOT NULL,
    `tipo` ENUM('VENCIMENTO_EMPRESA', 'PLANO_PAGO', 'COBRANCA_GERADA', 'FATURA_PAGA', 'PARCELA_PAGA', 'MANUAL', 'TICKET_MENSAGEM') NOT NULL,
    `lida` BOOLEAN NOT NULL DEFAULT false,
    `actionLink` VARCHAR(191) NULL,
    `actionLabel` VARCHAR(191) NULL,
    `empresaId` INTEGER NULL,
    `userId` INTEGER NULL,
    `metadata` JSON NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `Notificacao_empresaId_lida_idx`(`empresaId`, `lida`),
    INDEX `Notificacao_userId_lida_idx`(`userId`, `lida`),
    INDEX `Notificacao_tipo_idx`(`tipo`),
    INDEX `Notificacao_createdAt_idx`(`createdAt`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Ticket` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `uuid` VARCHAR(191) NOT NULL,
    `titulo` VARCHAR(191) NOT NULL,
    `descricao` TEXT NOT NULL,
    `tipo` ENUM('PROBLEMA', 'AJUDA', 'MELHORIA', 'SUGESTAO') NOT NULL,
    `status` ENUM('ABERTO', 'EM_ANDAMENTO', 'RESOLVIDO', 'FECHADO') NOT NULL DEFAULT 'ABERTO',
    `prioridade` ENUM('BAIXA', 'MEDIA', 'ALTA', 'URGENTE') NOT NULL DEFAULT 'MEDIA',
    `anexos` JSON NULL,
    `criadorId` INTEGER NOT NULL,
    `empresaId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Ticket_uuid_key`(`uuid`),
    INDEX `Ticket_criadorId_idx`(`criadorId`),
    INDEX `Ticket_empresaId_idx`(`empresaId`),
    INDEX `Ticket_status_idx`(`status`),
    INDEX `Ticket_tipo_idx`(`tipo`),
    INDEX `Ticket_prioridade_idx`(`prioridade`),
    INDEX `Ticket_createdAt_idx`(`createdAt`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TicketMensagem` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `ticketId` INTEGER NOT NULL,
    `userId` INTEGER NOT NULL,
    `mensagem` TEXT NOT NULL,
    `anexos` JSON NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    INDEX `TicketMensagem_ticketId_idx`(`ticketId`),
    INDEX `TicketMensagem_userId_idx`(`userId`),
    INDEX `TicketMensagem_createdAt_idx`(`createdAt`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `User` ADD CONSTRAINT `User_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `User` ADD CONSTRAINT `User_clienteId_fkey` FOREIGN KEY (`clienteId`) REFERENCES `Cliente`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Cliente` ADD CONSTRAINT `Cliente_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `CategoriaProduto` ADD CONSTRAINT `CategoriaProduto_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Produto` ADD CONSTRAINT `Produto_categoriaId_fkey` FOREIGN KEY (`categoriaId`) REFERENCES `CategoriaProduto`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Produto` ADD CONSTRAINT `Produto_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MovimentoEstoque` ADD CONSTRAINT `MovimentoEstoque_produtoId_fkey` FOREIGN KEY (`produtoId`) REFERENCES `Produto`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MovimentoEstoque` ADD CONSTRAINT `MovimentoEstoque_fornecedorId_fkey` FOREIGN KEY (`fornecedorId`) REFERENCES `Fornecedor`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MovimentoEstoque` ADD CONSTRAINT `MovimentoEstoque_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `CategoriaFornecedor` ADD CONSTRAINT `CategoriaFornecedor_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Fornecedor` ADD CONSTRAINT `Fornecedor_categoriaId_fkey` FOREIGN KEY (`categoriaId`) REFERENCES `CategoriaFornecedor`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Fornecedor` ADD CONSTRAINT `Fornecedor_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Cotacao` ADD CONSTRAINT `Cotacao_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ItemCotacao` ADD CONSTRAINT `ItemCotacao_fornecedorId_fkey` FOREIGN KEY (`fornecedorId`) REFERENCES `Fornecedor`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ItemCotacao` ADD CONSTRAINT `ItemCotacao_produtoId_fkey` FOREIGN KEY (`produtoId`) REFERENCES `Produto`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ItemCotacao` ADD CONSTRAINT `ItemCotacao_cotacaoId_fkey` FOREIGN KEY (`cotacaoId`) REFERENCES `Cotacao`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ItemCotacao` ADD CONSTRAINT `ItemCotacao_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ContaPagar` ADD CONSTRAINT `ContaPagar_fornecedorId_fkey` FOREIGN KEY (`fornecedorId`) REFERENCES `Fornecedor`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ContaPagar` ADD CONSTRAINT `ContaPagar_produtoId_fkey` FOREIGN KEY (`produtoId`) REFERENCES `Produto`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ContaPagar` ADD CONSTRAINT `ContaPagar_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `VendaProduto` ADD CONSTRAINT `VendaProduto_produtoId_fkey` FOREIGN KEY (`produtoId`) REFERENCES `Produto`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `VendaProduto` ADD CONSTRAINT `VendaProduto_vendaId_fkey` FOREIGN KEY (`vendaId`) REFERENCES `Venda`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `VendaProduto` ADD CONSTRAINT `VendaProduto_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Venda` ADD CONSTRAINT `Venda_vendedorId_fkey` FOREIGN KEY (`vendedorId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Venda` ADD CONSTRAINT `Venda_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Venda` ADD CONSTRAINT `Venda_clienteId_fkey` FOREIGN KEY (`clienteId`) REFERENCES `Cliente`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Venda` ADD CONSTRAINT `Venda_gatewayId_fkey` FOREIGN KEY (`gatewayId`) REFERENCES `Gateway`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Venda` ADD CONSTRAINT `Venda_conexaoId_fkey` FOREIGN KEY (`conexaoId`) REFERENCES `Conexao`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `VendaFinal` ADD CONSTRAINT `VendaFinal_vendaId_fkey` FOREIGN KEY (`vendaId`) REFERENCES `Venda`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `VendaFinal` ADD CONSTRAINT `VendaFinal_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `VendaFinal` ADD CONSTRAINT `VendaFinal_gatewayId_fkey` FOREIGN KEY (`gatewayId`) REFERENCES `Gateway`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `VendaFinal` ADD CONSTRAINT `VendaFinal_conexaoId_fkey` FOREIGN KEY (`conexaoId`) REFERENCES `Conexao`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Conexao` ADD CONSTRAINT `Conexao_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Mensagem` ADD CONSTRAINT `Mensagem_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `CompraPlanoEmpresa` ADD CONSTRAINT `CompraPlanoEmpresa_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `CompraPlanoEmpresa` ADD CONSTRAINT `CompraPlanoEmpresa_planoId_fkey` FOREIGN KEY (`planoId`) REFERENCES `Plano`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `CompraPlanoEmpresa` ADD CONSTRAINT `CompraPlanoEmpresa_gatewayId_fkey` FOREIGN KEY (`gatewayId`) REFERENCES `Gateway`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Gateway` ADD CONSTRAINT `Gateway_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Notificacao` ADD CONSTRAINT `Notificacao_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Notificacao` ADD CONSTRAINT `Notificacao_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Ticket` ADD CONSTRAINT `Ticket_criadorId_fkey` FOREIGN KEY (`criadorId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Ticket` ADD CONSTRAINT `Ticket_empresaId_fkey` FOREIGN KEY (`empresaId`) REFERENCES `Empresa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TicketMensagem` ADD CONSTRAINT `TicketMensagem_ticketId_fkey` FOREIGN KEY (`ticketId`) REFERENCES `Ticket`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TicketMensagem` ADD CONSTRAINT `TicketMensagem_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
