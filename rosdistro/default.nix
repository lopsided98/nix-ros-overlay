{ lib, buildPythonPackage, fetchPypi, rospkg, catkin-pkg, pyyaml }:

buildPythonPackage rec {
  pname = "rosdistro";
  version = "0.7.4";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "1vwpsg14m475z1pbj76anl0ncc5qyi1k1p74yg0s79irv4kilvi6";
  };

  propagatedBuildInputs = [ rospkg catkin-pkg pyyaml ];

  meta = with lib; {
    description = "A tool to work with rosdistro files";
    homepage = http://wiki.ros.org/rosdistro;
    license = licenses.bsd3;
  };
}
