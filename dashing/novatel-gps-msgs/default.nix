
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-novatel-gps-msgs";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/dashing/novatel_gps_msgs/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "055a89dababf0cd077bfc3ea1a761051fe80b979dad06bf64bf9bbbd1da388b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Messages for proprietary (non-NMEA) sentences from Novatel GPS receivers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
