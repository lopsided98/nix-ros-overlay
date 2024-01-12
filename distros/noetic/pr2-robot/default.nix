
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-monitor, pr2-bringup, pr2-camera-synchronizer, pr2-computer-monitor, pr2-controller-configuration, pr2-ethercat, pr2-run-stop-auto-restart }:
buildRosPackage {
  pname = "ros-noetic-pr2-robot";
  version = "1.6.32-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/pr2_robot/1.6.32-1.tar.gz";
    name = "1.6.32-1.tar.gz";
    sha256 = "368195704a50d088e931ccd3739770e8626bb2df0ab03fb68d9d334d805761e4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ imu-monitor pr2-bringup pr2-camera-synchronizer pr2-computer-monitor pr2-controller-configuration pr2-ethercat pr2-run-stop-auto-restart ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack collects PR2-specific components that are used in bringing up
  a robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
