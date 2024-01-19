
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-mobile-robot-simulator";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/mobile_robot_simulator-release/archive/release/noetic/mobile_robot_simulator/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "264f763be9c1dac02cf090026034ceb2d94c89278b8ecab316c482b079d6a26d";
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
