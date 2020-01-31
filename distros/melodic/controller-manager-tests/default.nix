
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, pluginlib, rosbash, roscpp, rosnode, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-controller-manager-tests";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager_tests/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "fd2d50be7d5408d7162a87228cd9726e1b8d788afb56aa4f3bb833ad42efe9da";
  };

  buildType = "catkin";
  checkInputs = [ rosbash rosnode rostest ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface pluginlib roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
