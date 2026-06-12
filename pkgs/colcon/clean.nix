{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, scantree, setuptools }:

buildPythonPackage rec {
  pname = "colcon-clean";
  version = "0.2.1";

  pyproject = true;
  build-system = [ setuptools ];

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-7lleFIYhA0s9zG4g2A95bnS8sutPykV8EF2ndSt2KsE=";
  };

  # Fix for https://github.com/colcon/colcon-clean/pull/46 is
  # available in scantree 0.4.0 in nixpkgs, so we don't need to
  # restrict the version anymore.
  postPatch = ''
    substituteInPlace setup.cfg \
      --replace-fail "scantree<0.0.2a0" "scantree"
  '';

  dependencies = [ colcon-core scantree ];

  pythonImportsCheck = [
    "colcon_clean"
  ];

  meta = with lib; {
    description = "An extension for colcon-core to clean package workspaces.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ wentasah ];
  };
}
