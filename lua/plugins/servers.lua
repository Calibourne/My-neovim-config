--local M = {}

local M = {

    --"als",

    -->== Angular Framework Support ==<--
    --"angularls",  -- add support by installing
    --npm install -g @angular/language-server

    -->== Ansible Syntax Support ==<--
    --"ansiblels",
    --npm install -g @ansible/ansible-language-server

    -->== ANTLR Syntax Support ==<--
    --"antlersls",
    --npm install -g antlers-language-server

    --"apex_ls",

    --"arduino_language_server",

    --"asm_lsp",

    -->== Astro Framework Support ==<--
    --"astro",
    --npm install -g @astrojs/language-server

    -->== Astro Framework Support ==<--
    --"astro",
    --npm install -g @astrojs/language-server

    -->== Awk Syntax Support ==<--
    --"awk_ls",
    --npm install -g awk-language-server

    -->== Bash Syntax Support ==<--
    --"bashls",
    --npm i -g bash-language-server

    --"beancount",

    --"bicep",

    --"blueprint_ls",

    --"bsl_ls",

    --"bufls",

    --"ccls",

    --"clangd",

    --"clarity_lsp",

    --"clojure_lsp",

    --"cmake",

    --"codeqlls",

    --"crystalline",

    --"csharp_ls",

    -->== CSS Syntax Support ==<--
    --"cssls",
    --npm i -g vscode-langservers-extracted

    -->== CSS Modules Syntax Support ==<--
    --"cssmodules_ls",
    --npm install -g cssmodules-language-server

    -->== Cucumber Testing Syntax Support ==<--
    --"cucumber_language_server",
    --npm install -g @cucumber/language-server

    --"dagger",

    --"dartls",

    --"denols",

    --"dhall_lsp_server",

    --"diagnosticls",

    -->== DockerFiles Syntax Support ==<--
    --"dockerls",
    --npm install -g dockerfile-language-server-nodejs

    -->== DOT Syntax Support ==<--
    --"dotls",
    --npm install -g dot-language-server

    --"efm",

    --"elixirls",

    -->== ELM Syntax Support ==<--
    --"elmls",
    --npm install -g elm elm-test elm-format @elm-tooling/elm-languag-server

    -->== Ember Framework Support ==<--
    --"ember",
    --npm install -g @lifeart/ember-language-server

    -->== Static Web Development Syntax Support ==<--
    --"emmet_ls",
    --npm install -g emmet-ls

    --"erlangls",

    --"esbonio",

    -->== ESlint code analysis Syntax Support ==<--
    --"eslint",
    --npm i -g vscode-langservers-extracted

    --"flow",

    --"flux_lsp",

    -->==  ==<--
    --"foam",
    --npm install -g foam-language-server

    --"fortls",

    --"fsautocomplete",

    --"fstar",

    --"gdscript",

    --"ghcide",

    --"ghdl_ls",

    -->==  ==<--
    --"glint",
    --npm install @glint/core --save-dev

    --"glslls",

    --"golangci_lint_ls",

    --"gopls",

    --"gradle_ls",
    -->==  ==<--

    --"grammarly",
    --npm i -g grammarly-langugeserver

    -->==  ==<--
    --"graphql",
    --npm install -g graphql-language-service-cli

    --"groovyls",

    -->==  ==<--
    --"haxe_language_server"
    --npm install
    --npx lix run vshaxe-build -t language-server

    --"hdl_checker",

    --"hhvm",

    --"hie",

    --"hls",

    -->==  ==<--
    --"hoon_ls",
    --npm install -g @hoon-laguage-server

    -->==  ==<--
    --"html",
    --npm i -g vscode-langservers-extracted

    --"idris2_lsp",

    -->==  ==<--
    --"intelephense",
    --npm install -g intelephense

    --"java_language_server",

    --"jdtls",

    --"jedi_language_server",

    -->==  ==<--
    --"jsonls",
    --npm i -g vscode-langservers-extracted

    --"jsonnet_ls",

    --"julials",

    --"kotlin_language_server",

    --"lean3ls",

    -->==  ==<--
    --"leanls",
    --npm install -g leanlanguage-server

    --"lelwel_ls",

    --"lemminx",

    --"ltex",

    --"luau_lsp",

    -->==  ==<--
    --"m68k",
    --npm install -g m68k-lsp-server

    --"marksman",

    --"metals",

    --"mint",

    --"mlir_lsp_server",

    --"mlir_pdll_lsp_server",

    --"mm0_ls",

    --"nickel_ls",

    --"nil_ls",

    --"nimls",

    -->==  ==<--
    --"nxls",
    --npm i -g nxls

    -->==  ==<--
    --"ocamlls",
    --npm install -g ocaml-language-server

    --"ocamllsp",

    --"ols",

    --"omnisharp",

    --"opencl_ls",

    --"openscad_ls",

    --"pasls",

    --"perlls",

    --"perlnavigator",

    --"perlpls",

    --"phan",

    --"phpactor",

    --"please",

    --"powershell_es",

    -->==  ==<--
    --"prismals",
    --npm install -g @prisma/language-server

    --"prosemd_lsp",

    --"psalm",

    --"puppet",

    --"purescriptls",

    --"pylsp",

    --"pyre",

    "pyright",
    --npm install -g pyright

    --"qml_lsp",

    --"quick_lint_js",

    --"r_language_server",

    --"racket_langserver",

    --"reason_ls",

    --"relay_lsp",

    -->==  ==<--
    --"remark_ls, -- add suppot by installing
    --npm install -g remark-language-server
    --npm install remark-preset-lint-recommended

    --"rescriptls",

    --"rls",

    --"rnix",

    --"robotframework_ls",

    -->==  ==<--
    --"rome",
    --npm install [-g] rome

    --"rust_analyzer",

    --"salt_ls",

    --"scry",

    --"serve_d",

    --"sixtyfps",

    --"slint_lsp",

    --"solang",

    --"solargraph",

    --"solc",

    -->==  ==<--
    --"solidity",
    --npm i solidity-ls -g

    -->==  ==<--
    --"solidity_ls",
    --npm install -g solidity-language-server

    --"sorbet",

    --"sourcekit",

    --"sourcery",

    -->==  ==<--
    --"spectral",
    --npm i -g spectral-language-server

    --"sqlls",

    --"sqls",

    --"steep",

    -->==  ==<--
    --"styleint_lsp",
    --npm i -g stylelint-ls

    -->== Lua Syntax Support ==<--
    "sumneko_lua", -- instructions to get the server enabled:
    --install ninja-build tool
    --clone repository and cd to it:
    --  git clone  --depth=1 https://github.com/sumneko/lua-language-server
    --  cd lua-language-server
    --update all tyhe submodules with command:
    --  git submodule update --depth 1 --init --recursive
    --install the server by executing:
    --  cd 3rd/luamake
    --  ./compile/install.sh
    --  cd ../..
    -- ./3rd/luamake/luamake rebuild

    -->==  ==<--
    --"svelte",
    --npm install -g svelte-language-server

    -->==  ==<--
    --"svlangserver",
    --npm install -g @imc-trading/svlangserve

    --"svls",

    --"syntax_tree",

    -->==  ==<--
    --"tailwindcss",
    --npm install -g @tailwindcss/languageserver

    --"taplo",

    --"tblgen_lsp_server",

    --"teal_ls",

    --"terraform_lsp",

    --"terraformls",

    --"texlab",

    --"tflint",

    --"theme_check",

    --"tilt_ls",

    -->==  ==<--
    "tsserver",
    --npm install -g typescript typescript-language-server
    --"tailwindcss",

    --"typeprof",

    --"vala_ls",

    --"vdmj",

    --"verible",

    --"veridian",

    -->==  ==<--
    --"vimls",
    --npm install -g vim-language-server

    --"visualforce_ls",

    --"vls",

    -->==  ==<--
    --"volar",
    --npm install -g @volar/vue-language-server

    -->==  ==<--
    --"vuels",
    --npm install -g vls

    --"wgsl_analyzer",

    --"yamlls",

    --"zk",

    --"zls",
}

return M
