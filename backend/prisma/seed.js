const { PrismaClient } = require('../dist/generated/prisma');
const bcrypt = require('bcrypt');
require('dotenv').config();

const prisma = new PrismaClient();

async function main() {
  const hashedPassword = await bcrypt.hash(process.env.SUPERADMIN_PASSWORD, 10);

  await prisma.user.upsert({
    where: { email: process.env.SUPERADMIN_EMAIL },
    update: {},
    create: {
      nome: process.env.SUPERADMIN_NOME,
      email: process.env.SUPERADMIN_EMAIL,
      senha: hashedPassword,
      celular: process.env.SUPERADMIN_CELULAR,
      role: 'SUPERADMIN'
    }
  });

  console.log('Superadmin criado com sucesso!');
}

main()
  .catch(e => {
    console.error(e);
    process.exit(1);
  })
  .finally(() => {
    prisma.$disconnect();
  });
