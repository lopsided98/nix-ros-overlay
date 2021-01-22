
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-monitor, pr2-bringup, pr2-camera-synchronizer, pr2-computer-monitor, pr2-controller-configuration, pr2-ethercat, pr2-run-stop-auto-restart }:
buildRosPackage {
  pname = "ros-kinetic-pr2-robot";
  version = "1.6.30";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/pr2_robot/1.6.30-0.tar.gz";
    name = "1.6.30-0.tar.gz";
    sha256 = "1a3043528e0a14aba70e2adf1ee8030249d2dcc443e50cccbb2ad48a3f455e92";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-monitor pr2-bringup pr2-camera-synchronizer pr2-computer-monitor pr2-controller-configuration pr2-ethercat pr2-run-stop-auto-restart ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack collects PR2-specific components that are used in bringing up
  a robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
