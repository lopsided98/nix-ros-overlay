{ buildPythonPackage, fetchPypi, catkin-pkg, pyyaml }:

buildPythonPackage rec {
  pname = "rospkg";
  version = "1.1.9";
  
  src = fetchPypi {
    inherit pname version;
    sha256 = "0kkmvkc7m3j14xmq1523h8d1hvi4cv06myhxw3dxsdb4yf9qa0q0";
  };

  propagatedBuildInputs = [ catkin-pkg pyyaml ];
  
  patches = [ ./0001-os_detect-add-support-for-NixOS.patch ];

  meta = {
    description = "Library for retrieving information about ROS packages and stacks";
    homepage = http://wiki.ros.org/rospkg;
  };
}
