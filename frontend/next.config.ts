import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
  typescript: {
    // ⚠️ Desativa verificação de tipos durante o build
    // ignoreBuildErrors: true,
  },
  images: {
    remotePatterns: [{
      protocol: 'https',
      hostname: '*'
    }, {
      protocol: 'http',
      hostname: '*'
    }]
  },
  // Configuração do Turbopack (padrão no Next.js 16)
  turbopack: {
    rules: {
      '*.svg': {
        loaders: ['@svgr/webpack'],
        as: '*.js',
      },
    },
  },
};

export default nextConfig;
