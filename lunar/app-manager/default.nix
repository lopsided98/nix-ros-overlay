
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rospack, catkin, message-generation, rosgraph, message-runtime, rospy, roslaunch, rosunit }:
buildRosPackage {
  pname = "ros-lunar-app-manager";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/app_manager-release/archive/release/lunar/app_manager/1.1.0-0.tar.gz;
    sha256 = "b1abf900a7f3ea7bba6cc240ed66202b9fa1f193782d96c83239ac94a5837e9e";
  };

  buildInputs = [ message-generation rosgraph rospy roslaunch rosunit ];
  propagatedBuildInputs = [ std-srvs rospack rosgraph message-runtime rospy roslaunch rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''app_manager'';
    #license = lib.licenses.BSD;
  };
}
