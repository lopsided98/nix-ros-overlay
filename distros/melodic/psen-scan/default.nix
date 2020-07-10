
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, roscpp, roslaunch, rostest, rosunit, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-psen-scan";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan-release/archive/release/melodic/psen_scan/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "c99d1c1f10ef086e790e4c4f5e617983a17875c2f21206fe81f501323a7e5c35";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage roslaunch rostest rosunit ];
  propagatedBuildInputs = [ roscpp roslaunch rviz sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The psen_scan package for Pilz laser scanner'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
