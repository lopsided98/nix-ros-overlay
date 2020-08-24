
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, pilz-testutils, roscpp, roslaunch, rostest, rosunit, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-psen-scan";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan-release/archive/release/melodic/psen_scan/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "a2e0047f4e44249571373f8cec48bb1d612e5f3bccf0e96cd1359e8a89de9289";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage pilz-testutils roslaunch rostest rosunit ];
  propagatedBuildInputs = [ roscpp roslaunch rviz sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The psen_scan package for Pilz laser scanner'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
