
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, pilz-testutils, roscpp, roslaunch, rostest, rosunit, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-psen-scan";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan-release/archive/release/melodic/psen_scan/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "3832ccbea8e5d6cedd18abceb0d12cd451031c2e46879e984cc2930fdaf3eb16";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ code-coverage pilz-testutils roslaunch rostest rosunit ];
  propagatedBuildInputs = [ roscpp roslaunch rviz sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The psen_scan package for Pilz laser scanner'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
