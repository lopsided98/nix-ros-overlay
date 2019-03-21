{ lib, buildPythonPackage, fetchPypi, makeWrapper, vcstools, pyyaml, rosdistro
, catkin-pkg, wstool, rospkg }:

rosinstall = buildPythonPackage rec {
  pname = "rosinstall";
  version = "0.7.8";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0h7d8ynv44c68sbfn28xw4k18k3ip6252x7r7bqw6b5cifzhia1b";
  };

  nativeBuildInputs = [ makeWrapper ];
  propagatedBuildInputs = [ vcstools pyyaml rosdistro catkin-pkg wstool rospkg ];

  meta = with lib; {
    description = "The installer for ROS";
    homepage = http://wiki.ros.org/rosinstall;
    license = licenses.bsd3;
  };
};
