
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager-msgs, python3Packages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-controller-manager";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/rqt_controller_manager/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "61da60d40bc290b5b9efe99226b78480340ba4e93659de5f66c66b312083eb33";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ controller-manager-msgs rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Graphical frontend for interacting with the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
