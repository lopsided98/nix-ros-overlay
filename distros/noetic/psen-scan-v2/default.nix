
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, fmt, geometry-msgs, message-generation, message-runtime, robot-state-publisher, rosbag, rosconsole-bridge, roscpp, roslaunch, rostest, rosunit, rviz, sensor-msgs, std-msgs, tinyxml-2, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-psen-scan-v2";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan_v2-release/archive/release/noetic/psen_scan_v2/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "fd94f38f3a4fdcd64638d5e4466df6a938ece0124748cf23d0df4a8b51fab7b9";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  checkInputs = [ code-coverage rosbag roslaunch rostest rosunit ];
  propagatedBuildInputs = [ fmt geometry-msgs message-runtime robot-state-publisher rosconsole-bridge roscpp roslaunch rviz sensor-msgs std-msgs tinyxml-2 visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for the Pilz laser scanner'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
