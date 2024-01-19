
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-vl53l1x";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/okalachev/vl53l1x_ros-release/archive/release/noetic/vl53l1x/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c4b77b41f388eb88ecf0bcd729ae30b6fb7ccadab59add42914a60eacca896a1";
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
