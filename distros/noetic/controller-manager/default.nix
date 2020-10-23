
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager-msgs, hardware-interface, pluginlib, python3Packages, roscpp, rosparam, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-controller-manager";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "6b20ca968c0457a0681fe49f022f9d5f2dc3669aa9969903b4035659be6d9571";
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
