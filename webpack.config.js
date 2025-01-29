const path = require("path");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");

const packagejson = require("./package.json");
const dashLibraryName = packagejson.name.replace(/-/g, "_");

module.exports = function (env, argv) {
  const isProduction = argv.mode === "production";

  return {
    mode: isProduction ? "production" : "development",
    entry: [path.join(__dirname, "src/ts/index.ts")],
    output: {
      path: path.join(__dirname, dashLibraryName),
      filename: `${dashLibraryName}.js`,
      library: dashLibraryName,
      libraryTarget: "umd",
    },
    target: "web",
    externals: {
      react: {
        commonjs: "react",
        commonjs2: "react",
        amd: "react",
        umd: "react",
        root: "React",
      },
      "react-dom": {
        commonjs: "react-dom",
        commonjs2: "react-dom",
        amd: "react-dom",
        umd: "react-dom",
        root: "ReactDOM",
      },
    },
    resolve: {
      extensions: [".ts", ".tsx", ".js", ".jsx", ".json"],
    },
    plugins: [
      new MiniCssExtractPlugin({
        filename: "[name].css",
      }),
    ],
    module: {
      rules: [
        {
          test: /\.tsx?$/,
          use: "ts-loader",
          exclude: /node_modules/,
        },
        {
          test: /\.css$/,
          use: [
            isProduction ? MiniCssExtractPlugin.loader : "style-loader",
            "css-loader",
          ],
        },
      ],
    },
  };
};
