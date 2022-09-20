
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rtcm-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rtcm_msgs-release/archive/release/galactic/rtcm_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "837a96c759ee5a668748a9cf35aae265e6d3bc3fb9fdd2ef06c51bb18713310c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The rtcm_msgs package contains messages related to data in the RTCM format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
