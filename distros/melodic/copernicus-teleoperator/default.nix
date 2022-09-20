
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, copernicus-msgs, geometry-msgs, roscpp, sensor-msgs, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-melodic-copernicus-teleoperator";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/copernicus-release/archive/release/melodic/copernicus_teleoperator/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "7de39e838268a097a798978f1ebf21f70565ccba35e2ec9b4fbada41c98d6c43";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs copernicus-msgs geometry-msgs roscpp sensor-msgs teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_teleoperator package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
