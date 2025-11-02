{ lib, buildPythonPackage, fetchPypi, pyyaml, setuptools, catkin-pkg, rospkg, distutils }:

buildPythonPackage rec {
  pname = "rosdistro";
  version = "1.0.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-J/iLS/CteekF6R2zdnS586JdEnrm5HuqvR4YBE1gwmw=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ pyyaml setuptools catkin-pkg rospkg distutils ];

  pythonImportsCheck = [ "rosdistro" ];

  meta = with lib; {
    description = "Tool to work with rosdistro files";
    homepage = "https://wiki.ros.org/rosdistro";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
