
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager-msgs, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-rqt-controller-manager";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/rqt_controller_manager/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "9d2024d9f920b1e424d96f44fcd454216e3f7469891c0072951c04737a7b18d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager-msgs rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical frontend for interacting with the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
