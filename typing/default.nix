{
  perSystem =
    { pkgs, ... }:
    {
      devShells.default = pkgs.mkShellNoCC {
        packages = [
          pkgs.typst
          pkgs.tinymist
        ];
      };
    };
}
