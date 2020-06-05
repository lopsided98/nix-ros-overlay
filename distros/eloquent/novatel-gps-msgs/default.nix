
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-novatel-gps-msgs";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/eloquent/novatel_gps_msgs/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "82e60f744deca17ef12a2bcc65ec362ce9e474a8b510e8fbd65a56c7a0bea827";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for proprietary (non-NMEA) sentences from Novatel GPS receivers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
