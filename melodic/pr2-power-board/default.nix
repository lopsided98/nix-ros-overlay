
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, message-generation, message-runtime, rospy, diagnostic-msgs, pr2-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-melodic-pr2-power-board";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/melodic/pr2_power_board/1.1.7-0.tar.gz;
    sha256 = "9e6596dd8cdea88ca5abd93ecf2d567d34b89e97a4ffa32dbfdc8f001ce0cea9";
  };

  buildInputs = [ diagnostic-updater message-generation diagnostic-msgs pr2-msgs roscpp log4cxx ];
  propagatedBuildInputs = [ diagnostic-updater message-runtime rospy diagnostic-msgs pr2-msgs roscpp log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This provides a ROS node for the PR2 Power Board.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
