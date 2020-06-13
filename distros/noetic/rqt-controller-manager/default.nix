
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager-msgs, python3Packages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-controller-manager";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/rqt_controller_manager/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "75199b01687f7970de9f197b53d17c489d09b300705eda302d12ea11640f55b4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager-msgs rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Graphical frontend for interacting with the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
