
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, python3Packages, roscpp, rosparam, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-controller-manager";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "bb98c35414e7807f3aa078c988637a414d76baf61dd041b1ff50f801bcea3f36";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager-msgs hardware-interface pluginlib roscpp rosparam rospy std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
