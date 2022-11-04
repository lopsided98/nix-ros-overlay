
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-vl53l1x";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/okalachev/vl53l1x_ros-release/archive/release/melodic/vl53l1x/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ccfaa924238bb45acc5d373e81e72c47aca4ebdebf6a576c9ce1c77ba47c27c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''VL53L1X ToF rangefinder driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
