
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, log4cxx, message-generation, message-runtime, pr2-msgs, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-pr2-power-board";
  version = "1.1.7";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/melodic/pr2_power_board/1.1.7-0.tar.gz";
    name = "1.1.7-0.tar.gz";
    sha256 = "9e6596dd8cdea88ca5abd93ecf2d567d34b89e97a4ffa32dbfdc8f001ce0cea9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater log4cxx message-runtime pr2-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This provides a ROS node for the PR2 Power Board.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
