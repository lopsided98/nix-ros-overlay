{ lib, buildPythonPackage, fetchFromGitHub, catkin-pkg, colcon-cmake
, colcon-core, colcon-pkg-config, colcon-python-setup-py, colcon-recursive-crawl
, colcon-library-path, toml, setuptools }:

buildPythonPackage rec {
  pname = "colcon-cargo";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-jhc5mN4jnLk2zLj01sBm63acrku/FIexnIWCQ6GKDKA=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    catkin-pkg
    colcon-cmake
    colcon-core
    colcon-pkg-config
    colcon-python-setup-py
    colcon-recursive-crawl
    colcon-library-path
    toml
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to support Rust projects built with Cargo";
    homepage = "https://github.com/colcon/colcon-cargo";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
