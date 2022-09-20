
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-novatel-gps-msgs";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/galactic/novatel_gps_msgs/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "29a8c0727f0c3e65f6b24bc415772300829d320848530195051fca27c37b86cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for proprietary (non-NMEA) sentences from Novatel GPS receivers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
