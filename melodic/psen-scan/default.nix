
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, roscpp, rostest, rosunit, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-psen-scan";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan-release/archive/release/melodic/psen_scan/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "0dcd41292fa61e67b34cb9a059f344854be3deaedac08dfec6d3adc2ec8fc97d";
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
