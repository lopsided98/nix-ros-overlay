
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, pilz-testutils, robot-state-publisher, rosconsole-bridge, roscpp, rosfmt, roslaunch, rostest, rosunit, rviz, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-psen-scan-v2";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan_v2-release/archive/release/melodic/psen_scan_v2/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "24789bb519f88eb2f18b97f400e19886c6843409e7acfead8821993eae2ed29c";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage pilz-testutils roslaunch rostest rosunit ];
  propagatedBuildInputs = [ robot-state-publisher rosconsole-bridge roscpp rosfmt roslaunch rviz sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for the Pilz laser scanner'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
