
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, fmt, geometry-msgs, message-generation, message-runtime, robot-state-publisher, rosbag, rosconsole-bridge, roscpp, roslaunch, rostest, rosunit, rviz, sensor-msgs, std-msgs, tinyxml-2, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-psen-scan-v2";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan_v2-release/archive/release/melodic/psen_scan_v2/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "b49dcf008df86d7dda4784b02e9da58382bb61f0a258033f2c65828bb14b4b24";
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
