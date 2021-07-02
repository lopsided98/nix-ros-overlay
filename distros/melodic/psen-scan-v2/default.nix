
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, fmt, pilz-testutils, robot-state-publisher, rosbag, rosconsole-bridge, roscpp, roslaunch, rostest, rosunit, rviz, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-psen-scan-v2";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan_v2-release/archive/release/melodic/psen_scan_v2/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "3e6f6dbac65d6f4dfc73586ae9b5d2ff6678a3dbabac789bcf51209f54ac99f8";
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
