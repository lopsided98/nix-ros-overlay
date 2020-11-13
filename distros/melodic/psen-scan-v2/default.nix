
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, pilz-testutils, robot-state-publisher, rosbag, rosconsole-bridge, roscpp, rosfmt, roslaunch, rostest, rosunit, rviz, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-psen-scan-v2";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan_v2-release/archive/release/melodic/psen_scan_v2/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "c01af2f67a442b3ae098cc3ad159de1a7cd66480d19d09205d06d16c525fcff8";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage pilz-testutils rosbag roslaunch rostest rosunit ];
  propagatedBuildInputs = [ robot-state-publisher rosconsole-bridge roscpp rosfmt roslaunch rviz sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for the Pilz laser scanner'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
