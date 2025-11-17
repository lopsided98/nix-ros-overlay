{ lib, buildPythonPackage, fetchPypi, catkin-pkg, colcon-cmake
, colcon-core, colcon-pkg-config, colcon-python-setup-py, colcon-recursive-crawl
, colcon-library-path, toml, setuptools }:

buildPythonPackage rec {
  pname = "colcon-cargo";
  version = "0.2.0";

  src = fetchPypi {
    inherit version;
    pname = "colcon_cargo";
    hash = "sha256-E66G45eqB0056PrS3V4+QpfMvYHVe3E3vQgtFkb8eKA=";
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
