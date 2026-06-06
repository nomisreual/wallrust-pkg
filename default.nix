{
  perSystem = {pkgs, ...}: {
    packages.default = pkgs.rustPlatform.buildRustPackage (finalAttrs: {
      pname = "wallrust";
      version = "v1.0.5";

      src = pkgs.fetchFromGitHub {
        owner = "prime-run";
        repo = "wallrust";
        hash = "sha256-PVHtpj3Vc7dJWnbLnvCGMdmOMlvGRet6bKLswxOnAcw";
        tag = finalAttrs.version;
      };

      cargoHash = "sha256-R2RjWCDUh60LN7gy4oWqBEDFft07jY3J654MpAnv/es";

      meta = {
        description = "";
      };
    });
  };
}
