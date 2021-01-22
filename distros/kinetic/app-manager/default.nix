
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph, roslaunch, rospack, rospy, rosunit, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-app-manager";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/app_manager-release/archive/release/kinetic/app_manager/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "47d1c3f051f9f3d9757512f441f8d1520accbf7e3300fd5e0a9dcacc86ffb589";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rosgraph roslaunch rospack rospy rosunit std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''app_manager'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
