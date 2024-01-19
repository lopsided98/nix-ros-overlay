
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, diagnostic-updater, log4cxx, message-generation, message-runtime, pr2-msgs, roscpp, rospy }:
buildRosPackage {
  pname = "ros-noetic-pr2-power-board";
  version = "1.1.10-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/noetic/pr2_power_board/1.1.10-1.tar.gz";
    name = "1.1.10-1.tar.gz";
    sha256 = "e7db741af1ca396c86b75584015c5688cf32d088d4c3be87792c4b3a879d8e31";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater log4cxx message-runtime pr2-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This provides a ROS node for the PR2 Power Board.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
