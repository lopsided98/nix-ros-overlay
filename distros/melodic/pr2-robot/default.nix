
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-monitor, pr2-bringup, pr2-camera-synchronizer, pr2-computer-monitor, pr2-controller-configuration, pr2-ethercat, pr2-run-stop-auto-restart }:
buildRosPackage {
  pname = "ros-melodic-pr2-robot";
  version = "1.6.31-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/melodic/pr2_robot/1.6.31-1.tar.gz";
    name = "1.6.31-1.tar.gz";
    sha256 = "9b7ce00c9c77872f1a8a4231af6debcba86564af37509f0dcae56e0c76953ae6";
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
