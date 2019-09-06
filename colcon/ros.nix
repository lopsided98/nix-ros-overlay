{ lib, buildPythonPackage, fetchPypi, isPy27, catkin-pkg, colcon-cmake
, colcon-core, colcon-pkg-config, colcon-python-setup-py
, colcon-recursive-crawl }:

buildPythonPackage rec {
  pname = "colcon-ros";
  version = "0.3.12";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1ykvg36dpwwidkyz8wzjnb1sqngkxnbih0m7wv80vqxzrnzjfckr";
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

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to support ROS packages.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
