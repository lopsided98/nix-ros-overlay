
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, roscpp, rostest, rosunit, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-psen-scan";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan-release/archive/release/melodic/psen_scan/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "31a1b214c0246803f9fe3601ec1dd97a916d90f3ac436dc32015ea78e53c5d59";
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
