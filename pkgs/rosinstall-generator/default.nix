{ lib, buildPythonPackage, fetchFromGitHub, fetchpatch, catkin-pkg, rosdistro
, rospkg, pyyaml, pytestCheckHook }:

buildPythonPackage rec {
  pname = "rosinstall_generator";
  version = "unstable-20211203";

  src = fetchFromGitHub {
    owner = "ros-infrastructure";
    repo = pname;
    # Contains several important fixes
    rev = "9024a02e0aa0e09b3a533458e05a4e862eae7ddf";
    sha256 = "sha256-yDKQQyZE75rYDS6hL638fOJxaqkNEQ/g5NG0eBEY/K0=";
  };

  propagatedBuildInputs = [ catkin-pkg rosdistro rospkg pyyaml ];

  checkInputs = [ pytestCheckHook ];

  meta = with lib; {
    description = "A tool to generator rosinstall files";
    homepage = "http://wiki.ros.org/rosinstall_generator";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
