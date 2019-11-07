{ lib, buildPythonPackage, fetchPypi, catkin-pkg, rosdistro, rospkg, pyyaml }:

buildPythonPackage rec {
  pname = "rosinstall_generator";
  version = "0.1.18";

  src = fetchPypi {
    inherit pname version;
    sha256 = "18n1yyadr88hm0wlqzpr4gbyjm58kbl2i4d61vc8gij6a3fxxknz";
  };

  propagatedBuildInputs = [ catkin-pkg rosdistro rospkg pyyaml ];

  meta = with lib; {
    description = "A tool to generator rosinstall files";
    homepage = "http://wiki.ros.org/rosinstall_generator";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
