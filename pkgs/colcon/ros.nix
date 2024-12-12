{
  lib,
  buildPythonPackage,
  fetchPypi,
  catkin-pkg,
  colcon-cmake,
  colcon-core,
  colcon-pkg-config,
  colcon-python-setup-py,
  colcon-recursive-crawl,
}:

buildPythonPackage rec {
  pname = "colcon-ros";
  version = "0.5.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-eafon2+mNvfk/USoi3hg+x2pnVHwunvPC5tiShpXg2U=";
  };

  propagatedBuildInputs = [
    catkin-pkg
    colcon-cmake
    colcon-core
    colcon-pkg-config
    colcon-python-setup-py
    colcon-recursive-crawl
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to support ROS packages.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
