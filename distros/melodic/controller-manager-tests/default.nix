
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, pluginlib, rosbash, roscpp, rosnode, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-controller-manager-tests";
  version = "0.18.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager_tests/0.18.3-1.tar.gz";
    name = "0.18.3-1.tar.gz";
    sha256 = "e31868f421a3393069ba5d9b07120b6c5993de17d0e75452ca8e7d9d8fa4efb5";
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
