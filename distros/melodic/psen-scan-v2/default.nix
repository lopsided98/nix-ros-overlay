
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, fmt, pilz-testutils, robot-state-publisher, rosbag, rosconsole-bridge, roscpp, roslaunch, rostest, rosunit, rviz, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-psen-scan-v2";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan_v2-release/archive/release/melodic/psen_scan_v2/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "ab79da9df5bab6b8bff2a185cf106337672ddaa7873702f8577caceed3a69900";
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
