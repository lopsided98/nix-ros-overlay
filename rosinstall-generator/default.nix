{ lib, buildPythonPackage, fetchPypi, catkin-pkg, rosdistro, rospkg, pyyaml }:

buildPythonPackage rec {
  pname = "rosinstall_generator";
  version = "0.1.17";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1h08qwbafba4pnq7c9m7n4nl0b4zvz6jynaab3fpa816x5h2qsif";
  };

  propagatedBuildInputs = [ catkin-pkg rosdistro rospkg pyyaml ];

  meta = with lib; {
    description = "A tool to generator rosinstall files";
    homepage = "http://wiki.ros.org/rosinstall_generator";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
