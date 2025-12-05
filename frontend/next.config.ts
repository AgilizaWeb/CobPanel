import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
  typescript: {
    // ⚠️ Desativa verificação de tipos durante o build
    // ignoreBuildErrors: true,
  },
  eslint: {
    // ⚠️ Desativa verificação do ESLint durante o build
    // ignoreDuringBuilds: true,
  },
  images: {
    remotePatterns: [{
      protocol: 'https',
      hostname: '*'
    },{
      protocol: 'http',
      hostname: '*'
    }]
  },
  webpack(config) {
    config.module.rules.push({
      test: /\.svg$/,
      use: ["@svgr/webpack"],
    });
    return config;
  },
};

export default nextConfig;
