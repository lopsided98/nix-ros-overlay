{ lib, buildPythonPackage, fetchFromGitHub, catkin-pkg, colcon-cmake, colcon-core
, colcon-pkg-config, colcon-python-setup-py
, colcon-recursive-crawl, setuptools }:

buildPythonPackage rec {
  pname = "colcon-ros";
  version = "0.5.0";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-BsGCgFGxOIAGTP4A8bulakMoeUj+Ki6sPIpTQ4L7LSo=";
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
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to support ROS packages";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
