{ pkgs, ... }:
{
  monospace = {
    # Rhodium Fonts
    # rhodium-fonts = {
    #   enable = true;
    #   name = "Rhodium Fonts";
    #   package = pkgs.rhodium-fonts;
    #   extraPackages = [];
    # };

    # Packaged Fonts
    maple-mono = {
      enable = false; # trimmed (size)
      package = pkgs.maple-mono.variable;
      name = "Maple Mono";
      style = "Monospace";
    };
    anonymous-pro = {
      enable = false; # trimmed (size)
      package = pkgs.anonymousPro;
      name = "Anonymous Pro";
      style = "Monospace";
    };
    cascadia-code = {
      enable = false; # trimmed (size)
      package = pkgs.cascadia-code;
      name = "Cascadia Code";
      style = "Monospace";
      extraPackages = with pkgs; [
        nerd-fonts.caskaydia-cove
      ];
    };
    dejavu-sans-mono = {
      enable = true;
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans Mono";
      style = "Monospace";
      extraPackages = with pkgs; [
        nerd-fonts.dejavu-sans-mono
      ];
    };
    fantasque-sans-mono = {
      enable = false; # trimmed (size)
      package = pkgs.fantasque-sans-mono;
      name = "Fantasque Sans Mono";
      style = "Monospace";
      extraPackages = with pkgs; [
        nerd-fonts.fantasque-sans-mono
      ];
    };
    fira-code = {
      enable = true;
      package = pkgs.fira-code;
      name = "Fira Code";
      style = "Monospace";
      extraPackages = with pkgs; [
        fira-code-symbols
        nerd-fonts.fira-code
      ];
    };
    fira-mono = {
      enable = false; # trimmed (size)
      package = pkgs.fira-mono;
      name = "Fira Mono";
      style = "Monospace";
      extraPackages = with pkgs; [
        nerd-fonts.fira-mono
      ];
    };
    hack-font = {
      enable = false; # trimmed (size)
      package = pkgs.hack-font;
      name = "Hack";
      style = "Monospace";
      extraPackages = with pkgs; [
        nerd-fonts.hack
      ];
    };
    ibm-plex-mono = {
      enable = false; # trimmed (size)
      package = pkgs.ibm-plex;
      name = "IBM Plex Mono";
      style = "Monospace";
      extraPackages = with pkgs; [
        nerd-fonts.blex-mono
      ];
    };
    inconsolata = {
      enable = false; # trimmed (size)
      package = pkgs.inconsolata;
      name = "Inconsolata";
      style = "Monospace";
      extraPackages = with pkgs; [
        nerd-fonts.inconsolata
      ];
    };
    jetbrains-mono = {
      enable = true;
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
      style = "Monospace";
      extraPackages = with pkgs; [
        nerd-fonts.jetbrains-mono
      ];
    };
    julia-mono = {
      enable = true;
      package = pkgs.julia-mono;
      name = "JuliaMono";
      style = "Monospace";
    };
    office-code-pro = {
      enable = false; # trimmed (size)
      package = pkgs.office-code-pro;
      name = "Office Code Pro";
      style = "Monospace";
    };
    paratype-pt-mono = {
      enable = false; # trimmed (size)
      package = pkgs.paratype-pt-sans;
      name = "PT Mono";
      style = "Monospace";
    };
    roboto-mono = {
      enable = false; # trimmed (size)
      package = pkgs.roboto-mono;
      name = "Roboto Mono";
      style = "Monospace";
      extraPackages = with pkgs; [
        nerd-fonts.roboto-mono
      ];
    };
    source-code-pro = {
      enable = false; # trimmed (size)
      package = pkgs.source-code-pro;
      name = "Source Code Pro";
      style = "Monospace";
    };
    ubuntu-mono = {
      enable = false; # trimmed (size)
      package = pkgs.ubuntu-classic;
      name = "Ubuntu Mono";
      style = "Monospace";
    };
    victor-mono = {
      enable = false; # trimmed (size)
      package = pkgs.victor-mono;
      name = "Victor Mono";
      style = "Monospace";
    };
  };

  monospace-pro = {
    berkeley-mono = {
      package = null;
      name = "Berkeley Mono";
      style = "Monospace Pro";
      licenseInfo = "Paid (Commercial)";
    };
    cartograph-cf-mono = {
      package = null;
      name = "Cartograph Mono CF";
      style = "Monospace Pro";
      licenseInfo = "Paid (Commercial)";
    };
    commit-mono = {
      enable = false; # trimmed (size)
      package = pkgs.commit-mono;
      name = "CommitMono";
      style = "Monospace Pro";
      licenseInfo = "Free (SIL OFL)";
      extraPackages = with pkgs; [
        nerd-fonts.commit-mono
      ];
    };
    dank-mono = {
      package = null;
      name = "Dank Mono";
      style = "Monospace Pro";
      licenseInfo = "Paid (Commercial)";
    };
    geist-mono = {
      enable = false; # trimmed (size)
      package = pkgs.geist-font;
      name = "Geist Mono";
      style = "Monospace Pro";
      licenseInfo = "Free (SIL OFL)";
      extraPackages = with pkgs; [
        nerd-fonts.geist-mono
      ];
    };
    input-mono = {
      enable = false; # trimmed (size)
      package = pkgs.input-fonts;
      name = "Input Mono";
      style = "Monospace Pro";
      licenseInfo = "Free for Personal Use (Custom License)";
    };
    iosevka = {
      enable = false; # trimmed (size)
      package = pkgs.iosevka;
      name = "Iosevka";
      style = "Monospace Pro";
      licenseInfo = "Free (SIL OFL)";
      extraPackages = with pkgs; [
        nerd-fonts.iosevka
        nerd-fonts.iosevka-term
        nerd-fonts.iosevka-term-slab
        nerd-fonts.zed-mono
      ];
    };
    monaspace = {
      enable = false; # trimmed (size)
      package = pkgs.monaspace;
      name = "Monaspace";
      style = "Monospace Pro";
      licenseInfo = "Free (SIL OFL)";
      extraPackages = with pkgs; [
        nerd-fonts.monaspace
      ];
    };
    monolisa = {
      package = null;
      name = "MonoLisa";
      style = "Monospace Pro";
      licenseInfo = "Paid (Commercial)";
    };
    operator-mono = {
      package = null;
      name = "Operator Mono";
      style = "Monospace Pro";
      licenseInfo = "Paid (Commercial)";
    };
    pragmatapro = {
      package = null;
      name = "PragmataPro";
      style = "Monospace Pro";
      licenseInfo = "Paid (Commercial)";
    };
    recursive = {
      enable = false; # trimmed (size)
      package = pkgs.recursive;
      name = "Recursive";
      style = "Monospace Pro";
      licenseInfo = "Free (SIL OFL)";
      extraPackages = with pkgs; [
        nerd-fonts.recursive-mono
      ];
    };
    server-mono = {
      package = null; # TODO: Add our own package
      name = "Server Mono";
      style = "Monospace Pro";
      licenseInfo = "Free (SIL OFL)";
    };
    sf-mono = {
      package = null;
      name = "SF Mono";
      style = "Monospace Pro";
      licenseInfo = "Apple (Restrictive)";
    };
  };

  sans-serif = {
    atkinson-hyperlegible = {
      enable = false; # trimmed (size)
      package = pkgs.atkinson-hyperlegible;
      name = "Atkinson Hyperlegible";
      style = "Sans-serif";
    };
    avenir = {
      package = null;
      name = "Avenir";
      style = "Sans-serif";
      licenseInfo = "Paid (Commercial)";
    };
    cabin = {
      enable = false; # trimmed (size)
      package = pkgs.cabin;
      name = "Cabin";
      style = "Sans-serif";
    };
    dosis = {
      enable = false; # trimmed (size)
      package = pkgs.dosis;
      name = "Dosis";
      style = "Sans-serif";
    };
    fira-sans = {
      enable = false; # trimmed (size)
      package = pkgs.fira;
      name = "Fira Sans";
      style = "Sans-serif";
    };
    futura = {
      package = null;
      name = "Futura";
      style = "Sans-serif";
      licenseInfo = "Paid (Commercial)";
    };
    helvetica-neue = {
      package = null;
      name = "Helvetica Neue";
      style = "Sans-serif";
      licenseInfo = "Paid (Commercial)";
    };
    inter = {
      enable = true;
      package = pkgs.inter;
      name = "Inter";
      style = "Sans-serif";
    };
    lato = {
      enable = false; # trimmed (size)
      package = pkgs.lato;
      name = "Lato";
      style = "Sans-serif";
    };
    liberation-ttf = {
      enable = true;
      package = pkgs.liberation_ttf;
      name = "Liberation";
      style = "Sans-serif";
      extraPackages = with pkgs; [
        nerd-fonts.liberation
      ];
    };
    montserrat = {
      enable = false; # trimmed (size)
      package = pkgs.montserrat;
      name = "Montserrat";
      style = "Sans-serif";
    };
    noto-fonts = {
      enable = true;
      package = pkgs.noto-fonts;
      name = "Noto Sans";
      style = "Sans-serif";
    };
    noto-fonts-cjk-sans = {
      enable = true;
      package = pkgs.noto-fonts-cjk-sans;
      name = "Noto Sans CJK";
      style = "Sans-serif";
    };
    noto-fonts-color-emoji = {
      enable = true;
      package = pkgs.noto-fonts-color-emoji;
      name = "Noto Emoji";
      style = "Sans-serif";
    };
    nunito = {
      enable = false;
      package = pkgs.nunito;
      name = "Nunito";
      style = "Sans-serif";
    };
    open-sans = {
      enable = true;
      package = pkgs.open-sans;
      name = "Open Sans";
      style = "Sans-serif";
    };
    overpass = {
      enable = false; # trimmed (size)
      package = pkgs.overpass;
      name = "Overpass";
      style = "Sans-serif";
    };
    poppins = {
      enable = false; # trimmed (size)
      package = pkgs.poppins;
      name = "Poppins";
      style = "Sans-serif";
    };
    proxima-nova = {
      package = null;
      name = "Proxima Nova";
      style = "Sans-serif";
      licenseInfo = "Paid (Commercial)";
    };
    quicksand = {
      enable = false; # trimmed (size)
      package = pkgs.quicksand;
      name = "Quicksand";
      style = "Sans-serif";
    };
    raleway = {
      enable = false; # trimmed (size)
      package = pkgs.raleway;
      name = "Raleway";
      style = "Sans-serif";
    };
    roboto = {
      enable = true;
      package = pkgs.roboto;
      name = "Roboto";
      style = "Sans-serif";
    };
    source-sans-pro = {
      enable = false; # trimmed (size)
      package = pkgs.source-sans-pro;
      name = "Source Sans Pro";
      style = "Sans-serif";
    };
    ubuntu = {
      enable = false; # trimmed (size)
      package = pkgs.ubuntu-classic;
      name = "Ubuntu";
      style = "Sans-serif";
    };
    work-sans = {
      enable = false; # trimmed (size)
      package = pkgs.work-sans;
      name = "Work Sans";
      style = "Sans-serif";
    };
  };
  serif = {
    alegreya = {
      enable = false; # trimmed (size)
      package = pkgs.alegreya;
      name = "Alegreya";
      style = "Serif";
    };
    cardo = {
      enable = false; # trimmed (size)
      package = pkgs.cardo;
      name = "Cardo";
      style = "Serif";
    };
    caslon = {
      package = null;
      name = "Adobe Caslon Pro";
      style = "Serif";
      licenseInfo = "Paid (Adobe)";
    };
    cormorant-garamond = {
      enable = false;
      package = pkgs.cormorant-garamond;
      name = "Cormorant Garamond";
      style = "Serif";
    };
    crimson = {
      enable = false; # trimmed (size)
      package = pkgs.crimson;
      name = "Crimson";
      style = "Serif";
    };
    eb-garamond = {
      enable = false; # trimmed (size)
      package = pkgs.eb-garamond;
      name = "EB Garamond";
      style = "Serif";
    };
    garamond-libre = {
      enable = false; # trimmed (size)
      package = pkgs.garamond-libre;
      name = "Garamond Libre";
      style = "Serif";
    };
    gelasio = {
      enable = false; # trimmed (size)
      package = pkgs.gelasio;
      name = "Gelasio";
      style = "Serif";
    };
    latin-modern = {
      enable = true;
      package = pkgs.lmodern;
      name = "Latin Modern";
      style = "Serif";
    };
    libre-baskerville = {
      enable = false; # trimmed (size)
      package = pkgs.libre-baskerville;
      name = "Libre Baskerville";
      style = "Serif";
    };
    lora = {
      enable = false; # trimmed (size)
      package = pkgs.lora;
      name = "Lora";
      style = "Serif";
    };
    merriweather = {
      enable = false; # trimmed (size)
      package = pkgs.merriweather;
      name = "Merriweather";
      style = "Serif";
    };
    minion-pro = {
      package = null;
      name = "Minion Pro";
      style = "Serif";
      licenseInfo = "Paid (Adobe)";
    };
    playfair-display = {
      enable = false;
      package = pkgs.playfair-display;
      name = "Playfair Display";
      style = "Serif";
    };
    sabon = {
      package = null;
      name = "Sabon";
      style = "Serif";
      licenseInfo = "Paid (Commercial)";
    };
    source-serif-pro = {
      enable = false; # trimmed (size)
      package = pkgs.source-serif-pro;
      name = "Source Serif Pro";
      style = "Serif";
    };
    vollkorn = {
      enable = false; # trimmed (size)
      package = pkgs.vollkorn;
      name = "Vollkorn";
      style = "Serif";
    };
  };
  display = {
    amatic-sc = {
      enable = false;
      package = pkgs.amatic-sc;
      name = "Amatic SC";
      style = "Display";
    };
    anton = {
      enable = false;
      package = pkgs.anton;
      name = "Anton";
      style = "Display";
    };
    bangers = {
      enable = false;
      package = pkgs.bangers;
      name = "Bangers";
      style = "Display";
    };
    bebas-neue = {
      enable = false;
      package = pkgs.bebas-neue;
      name = "Bebas Neue";
      style = "Display";
    };
    comfortaa = {
      enable = false; # trimmed (size)
      package = pkgs.comfortaa;
      name = "Comfortaa";
      style = "Display";
    };
    dancing-script = {
      enable = false; # trimmed (size)
      package = pkgs.dancing-script;
      name = "Dancing Script";
      style = "Display";
    };
    fredoka-one = {
      enable = false;
      package = pkgs.fredoka-one;
      name = "Fredoka One";
      style = "Display";
    };
    oswald = {
      enable = false; # trimmed (size)
      package = pkgs.oswald;
      name = "Oswald";
      style = "Display";
    };
    pacifico = {
      enable = false;
      package = pkgs.pacifico;
      name = "Pacifico";
      style = "Display";
    };
    righteous = {
      enable = false;
      package = pkgs.righteous;
      name = "Righteous";
      style = "Display";
    };

    unifont = {
      unifont = {
        enable = true;
        package = pkgs.unifont;
        name = "Unifont";
        style = "Unifont";
      };
      symbola = {
        enable = true;
        package = pkgs.symbola;
        name = "Symbola";
        style = "Symbola";
      };
      quivira = {
        enable = true;
        package = pkgs.quivira;
        name = "Quivira";
        style = "Quivira";
      };
    };
  };
}
