{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  cargo,
  rustPlatform,
  rustc,
}:

buildPythonPackage rec {
  pname = "cargo-ament-build";
  version = "0.1.9";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ros2-rust";
    repo = "cargo-ament-build";
    rev = "v${version}";
    hash = "sha256-5D0eB3GCQLgVYuYkHMTkboruiYSAaWy3qZjF/hVpRP0=";
  };

  cargoDeps = rustPlatform.importCargoLock {
    lockFile = ./Cargo.lock;
  };

  postPatch = ''
    ln -s ${./Cargo.lock} Cargo.lock
  '';

  build-system = [
    cargo
    rustPlatform.cargoSetupHook
    rustPlatform.maturinBuildHook
    rustc
  ];

  meta = {
    description = "";
    homepage = "https://github.com/ros2-rust/cargo-ament-build";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ wentasah ];
  };
}
