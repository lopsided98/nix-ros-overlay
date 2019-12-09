
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, pr2-msgs, std-msgs, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-pr2-computer-monitor";
  version = "1.6.30";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/pr2_computer_monitor/1.6.30-0.tar.gz";
    name = "1.6.30-0.tar.gz";
    sha256 = "d3a44754f1af2850996a4d83023c7957a75294c4fb41b34c600afa010033e738";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs diagnostic-msgs pr2-msgs roscpp ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-msgs std-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Monitors the computer's processor and hard drives of the PR2 and publishes data to diagnostics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
