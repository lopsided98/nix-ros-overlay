
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, message-generation, message-runtime, rospy, diagnostic-msgs, pr2-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-kinetic-pr2-power-board";
  version = "1.1.7";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/kinetic/pr2_power_board/1.1.7-0.tar.gz";
    name = "1.1.7-0.tar.gz";
    sha256 = "ddc7a7200607e678b5f3097d563f54e0ab0f645ea7fc06f603ac215d4ebe8341";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-updater message-generation diagnostic-msgs pr2-msgs roscpp log4cxx ];
  propagatedBuildInputs = [ diagnostic-updater message-runtime rospy diagnostic-msgs pr2-msgs roscpp log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This provides a ROS node for the PR2 Power Board.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
