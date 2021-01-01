
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rocon-python-wifi";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_python_wifi/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "2ec60de42401432db69b67247a38ae52eff9fc7a3814ee6e00eb26c66cc797d6";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pythonwifi package is available through pypi, but not through a 
    deb package. This is copy of the package suitable for use through the
    ROS ecosystem.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
