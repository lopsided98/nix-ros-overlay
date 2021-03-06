
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, fmt, pilz-testutils, robot-state-publisher, rosbag, rosconsole-bridge, roscpp, roslaunch, rostest, rosunit, rviz, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-psen-scan-v2";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan_v2-release/archive/release/noetic/psen_scan_v2/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "6d0336683936565129598cea9c880e3e72e274c094caf3b264ed89b432a676d8";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage pilz-testutils rosbag roslaunch rostest rosunit ];
  propagatedBuildInputs = [ fmt robot-state-publisher rosconsole-bridge roscpp roslaunch rviz sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for the Pilz laser scanner'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
