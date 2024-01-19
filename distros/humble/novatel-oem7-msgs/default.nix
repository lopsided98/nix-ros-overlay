
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-novatel-oem7-msgs";
  version = "20.1.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/humble/novatel_oem7_msgs/20.1.0-1.tar.gz";
    name = "20.1.0-1.tar.gz";
    sha256 = "b5eb7bfdbe11472c51543e4f907a500ef7815746742b736c5be365f30cda5447";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for NovAtel Oem7 family of receivers.'';
    license = with lib.licenses; [ mit ];
  };
}
