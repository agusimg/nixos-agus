{ pkgs, ... }:
{
  imports = [
    # --- Languages, Servers And Formatters ---
    ./bash.nix
    # ./clojure.nix # trimmed (size)
    ./cmake.nix
    # ./commonlisp.nix # trimmed (size)
    ./cpp.nix
    # ./crystal.nix # trimmed (size)
    # ./csharp.nix # trimmed (size)
    ./css.nix
    # ./deno.nix # trimmed (size)
    # ./dhall.nix # trimmed (size)
    ./docker.nix
    # ./elixir.nix # trimmed (size)
    # ./elm.nix # trimmed (size)
    ./emmet.nix
    # ./faust.nix # trimmed (size)
    # ./fennel.nix # trimmed (size)
    ./fish.nix
    # ./fortran.nix # trimmed (size)
    # ./fsharp.nix # trimmed (size)
    ./general.nix
    # ./glsl.nix # trimmed (size)
    # ./go.nix # trimmed (size)
    # ./graphql.nix # trimmed (size)
    # ./haskell.nix # trimmed (size)
    ./java.nix
    ./javascript.nix
    ./jinja.nix
    ./just.nix
    # ./julia.nix # trimmed (size)
    ./kdl.nix
    # ./kotlin.nix # trimmed (size)
    # ./latex.nix # trimmed (size)
    ./lua.nix
    ./markdown.nix
    ./nix.nix
    # ./ocaml.nix # trimmed (size)
    # ./perl.nix # trimmed (size)
    # ./php.nix # trimmed (size)
    # ./prisma.nix # trimmed (size)
    # ./protobuf.nix # trimmed (size)
    ./python.nix
    # ./r.nix # trimmed (size)
    # ./rust.nix # trimmed (size)
    # ./scala.nix # trimmed (size)
    ./sql.nix
    # ./svelte.nix # trimmed (size)
    # ./swift.nix # DISABLED: Swift 5.10.1 build broken in nixpkgs 25.11 (GCC 14 incompatibility)
    # ./tailwind.nix # trimmed (size)
    # ./terraform.nix # trimmed (size)
    ./toml.nix
    ./typst.nix
    # ./vue.nix # trimmed (size)
    ./xml.nix
    ./yaml.nix
    # ./zig.nix # trimmed (size)
  ];
}
