{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "Homarr Dev Environment";

  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git
    pkgs.openssl
  ];

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo $GREET";

  enterShell = ''
    hello
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep "2.42.0"
  '';

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/languages/
  languages.javascript.enable = true;
  languages.javascript.yarn.enable = true;
  languages.typescript.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
