
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, log4cxx, message-generation, message-runtime, pr2-msgs, roscpp, rospy }:
buildRosPackage {
  pname = "ros-noetic-pr2-power-board";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/noetic/pr2_power_board/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "5c2fa3882b2715207997d77c1660a0f3ac8bbe058b55d964472830d11b84084c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater log4cxx message-runtime pr2-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This provides a ROS node for the PR2 Power Board.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
