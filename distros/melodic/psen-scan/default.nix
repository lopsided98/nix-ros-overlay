
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, roscpp, rostest, rosunit, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-psen-scan";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan-release/archive/release/melodic/psen_scan/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "f24ba5fd7ac6e48fc8c3127529b15b5f664d7d6db414c608ad628aaf9fb785fc";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage rostest rosunit ];
  propagatedBuildInputs = [ roscpp rviz sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The psen_scan package for Pilz laser scanner'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
