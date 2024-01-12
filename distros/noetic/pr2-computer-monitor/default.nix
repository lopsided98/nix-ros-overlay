
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pr2-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-computer-monitor";
  version = "1.6.32-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/pr2_computer_monitor/1.6.32-1.tar.gz";
    name = "1.6.32-1.tar.gz";
    sha256 = "30b52ef1b9ae7056eeff1be2b99e27b1d069252d3a8d56d1e9e93bb9ead05377";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Monitors the computer's processor and hard drives of the PR2 and publishes data to diagnostics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
