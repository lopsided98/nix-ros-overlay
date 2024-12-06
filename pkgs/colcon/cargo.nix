{ lib, buildPythonPackage, fetchPypi, catkin-pkg, colcon-cmake
, colcon-core, colcon-pkg-config, colcon-python-setup-py, colcon-recursive-crawl
, colcon-library-path, toml }:

buildPythonPackage rec {
  pname = "colcon-cargo";
  version = "0.1.3";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-FXp3Nso5NlvBqPA2Kv03mBNR8fwQELbDMU+mqmxTSWc=";
  };

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
