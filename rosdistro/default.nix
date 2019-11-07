{ lib, buildPythonPackage, fetchPypi, rospkg, catkin-pkg, pyyaml }:

buildPythonPackage rec {
  pname = "rosdistro";
  version = "0.7.5";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1rkg3q0fqfqi8cc4nzrkv14l132p9ibx3hla3g20x4vabksqv445";
  };

  propagatedBuildInputs = [ rospkg catkin-pkg pyyaml ];

  meta = with lib; {
    description = "A tool to work with rosdistro files";
    homepage = http://wiki.ros.org/rosdistro;
    license = licenses.bsd3;
  };
}
