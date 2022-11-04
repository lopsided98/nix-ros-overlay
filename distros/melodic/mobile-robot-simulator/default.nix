
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mobile-robot-simulator";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/mobile_robot_simulator-release/archive/release/melodic/mobile_robot_simulator/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "dfb06a08fdc913cfe76d014a149cfb5da9770cac4372ff88baa08e10ecbcac6f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mobile_robot_simulator package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
