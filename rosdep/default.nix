{ buildPythonPackage, fetchPypi, catkin-pkg, rospkg, pyyaml, rosdistro }:

buildPythonPackage rec {
  pname = "rosdep";
  version = "0.15.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1zyx1f31fb80b0q7fz5kc1px4882c42p5ag0985xxsl1glvy4mhl";
  };

  patches = [ ./0001-Add-support-for-Nix-NixOS.patch ];

  # Tries to download files
  doCheck = false;

  propagatedBuildInputs = [ catkin-pkg rospkg pyyaml rosdistro ];

  meta = {
    description = "Package manager abstraction tool for ROS";
    homepage = http://wiki.ros.org/rosdep;
  };
}
