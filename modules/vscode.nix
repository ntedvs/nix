{ pkgs, ... }:
{
  home-manager.users.nate = {
    programs.vscode = {
      enable = true;

      profiles.default = {
        extensions = with pkgs.vscode-extensions; [
          tamasfe.even-better-toml
          ritwickdey.liveserver
          zhuangtongfa.material-theme
          esbenp.prettier-vscode
          pkief.material-icon-theme
          jnoortheen.nix-ide
          ms-python.vscode-pylance
          ms-python.python
          ms-python.debugpy
          charliermarsh.ruff
          rust-lang.rust-analyzer
          bradlc.vscode-tailwindcss
          vscodevim.vim
          # inferrinizzard.prettier-sql-vscode
          # natedavis.style-sorter
        ];

        userSettings = {
          "workbench.colorTheme" = "One Dark Pro";
          "workbench.iconTheme" = "material-icon-theme";
          "workbench.layoutControl.enabled" = false;
          "workbench.sideBar.location" = "right";
          "window.commandCenter" = false;

          "explorer.confirmDragAndDrop" = false;
          "explorer.confirmPasteNative" = false;
          "explorer.confirmDelete" = false;
          "workbench.startupEditor" = "none";
          "update.showReleaseNotes" = false;
          "git.openRepositoryInParentFolders" = "never";

          "chat.commandCenter.enabled" = false;
          "editor.tabSize" = 2;
          "editor.codeLens" = false;
          "breadcrumbs.enabled" = false;
          "editor.colorDecorators" = false;
          "editor.stickyScroll.enabled" = false;
          "editor.minimap.enabled" = false;
          "editor.lightbulb.enabled" = "off";
          "emmet.showExpandedAbbreviation" = "never";
          "terminal.integrated.shellIntegration.decorationsEnabled" = "never";

          "keyboard.dispatch" = "keyCode";

          "editor.formatOnSave" = true;
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
          "editor.codeActionsOnSave" = {
            "source.organizeImports" = "always";
          };
          "prettier.semi" = false;

          "github.copilot.nextEditSuggestions.enabled" = true;
          "liveServer.settings.donotShowInfoMsg" = true;
          "style-sorter.order" = "smacss";

          "nix.enableLanguageServer" = true;
          "nix.serverPath" = "nixd";
          "nix.serverSettings" = {
            "nixd" = {
              "options" = {
                "home-manager" = {
                  "expr" =
                    "(builtins.getFlake (builtins.toString ./.)).nixosConfigurations.default.options.home-manager.users.type.getSubOptions []";
                };
              };
            };
          };

          "Prettier-SQL.SQLFlavourOverride" = "postgresql";
          # "Prettier-SQL.logicalOperatorNewline" = "after";

          "[python]" = {
            "editor.tabSize" = 4;
            "editor.defaultFormatter" = "charliermarsh.ruff";
          };
          "[rust]" = {
            "editor.defaultFormatter" = "rust-lang.rust-analyzer";
          };
          "[toml]" = {
            "editor.defaultFormatter" = "tamasfe.even-better-toml";
          };
          "[snippets]" = {
            "editor.defaultFormatter" = "vscode.json-language-features";
          };
          "[sql]" = {
            "editor.defaultFormatter" = "inferrinizzard.prettier-sql-vscode";
          };
          "[nix]" = {
            "editor.defaultFormatter" = "jnoortheen.nix-ide";
          };
          "files.associations" = {
            "*.css" = "tailwindcss";
          };

          "files.exclude" = {
            "**/node_modules" = true;
            "**/pnpm-lock.yaml" = true;
            "**/pnpm-workspace.yaml" = true;

            "**/.next" = true;
            "**/next.config.ts" = true;
            "**/next-env.d.ts" = true;

            "**/tsconfig.json" = true;
            "**/dist" = true;

            "**/eslint.config.mjs" = true;

            "**/.gitignore" = true;
            "**/README.md" = true;

            "**/postcss.config.mjs" = true;
            "**/prettier.config.mjs" = true;

            "**/vercel.json" = true;

            "**/drizzle.config.ts" = true;
            "**/migrations" = true;

            "**/target" = true;
            "**/Cargo.lock" = true;

            "**/.claude" = true;

            "**/flake.lock" = true;

            "**/.venv" = true;
          };
        };
      };
    };
  };
}
