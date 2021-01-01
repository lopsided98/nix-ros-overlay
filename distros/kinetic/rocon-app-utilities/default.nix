
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-console, rocon-python-utils, rocon-uri, roslaunch, roslint }:
buildRosPackage {
  pname = "ros-kinetic-rocon-app-utilities";
  version = "0.9.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_app_platform-release/archive/release/kinetic/rocon_app_utilities/0.9.1-0.tar.gz";
    name = "0.9.1-0.tar.gz";
    sha256 = "d34fe2fbdd0aa77992a803495a43563145315c2d7e0ad1ac3229d2c194f5dd5d";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg roslint ];
  propagatedBuildInputs = [ pythonPackages.rospkg rocon-console rocon-python-utils rocon-uri roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rocon_app_utilities package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
