
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph, roslaunch, rospack, rospy, rosunit, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-app-manager";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/app_manager-release/archive/release/melodic/app_manager/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "9dc26bb5d17e3c5cbc39e09d60faf429bda20287f206ec43327ea5d22717f7a8";
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
