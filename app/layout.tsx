import type { Metadata } from "next";
import { Inter } from "next/font/google";
import { Analytics } from "@vercel/analytics/react"
import "./globals.css";


const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "@5isn | donworry.me",
  description: "Private Biolink developed with Next.js | @donworry on dc",
  icons: {
    icon: "https://cdn.discordapp.com/attachments/1349684241146970162/1357195720028979340/favicon.ico?ex=67ef5283&is=67ee0103&hm=c906b68a3484f44832fa36999d39e655fdcbc6aa21bbfb6173edea3583d2d549&",
  },
  openGraph: {
    title: "@5isn | donworry.me",
    description: "Private Biolink developed with Next.js | @5isn on dc",
    url: "https://donworry.me/",
    images: [
      {
        url: "https://i.pinimg.com/736x/9f/c7/e3/9fc7e3ec06cd28eb55b3bc8a0663cb69.jpg", // Replace with your thumbnail URL
        width: 1200,
        height: 630,
        alt: "Thumbnail description",
      },
    ],
  },
};

// Define viewport configuration for theme color
export const viewport = {
  themeColor: "#000000", // Black embed color
};


export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={inter.className}>{children}</body>
    </html>
  );
}
