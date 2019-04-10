
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, message-generation, message-runtime, rospy, diagnostic-msgs, pr2-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-lunar-pr2-power-board";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/lunar/pr2_power_board/1.1.7-0.tar.gz;
    sha256 = "d73dd7220271fe533a97f25b387c7d8f3ce82583da84adda5c16f4a0ceb8f7d7";
  };

  buildInputs = [ diagnostic-updater message-generation diagnostic-msgs pr2-msgs roscpp log4cxx ];
  propagatedBuildInputs = [ diagnostic-updater message-runtime rospy diagnostic-msgs pr2-msgs roscpp log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This provides a ROS node for the PR2 Power Board.'';
    #license = lib.licenses.BSD;
  };
}
