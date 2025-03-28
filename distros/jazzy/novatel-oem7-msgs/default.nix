
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-novatel-oem7-msgs";
  version = "24.1.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/jazzy/novatel_oem7_msgs/24.1.0-1.tar.gz";
    name = "24.1.0-1.tar.gz";
    sha256 = "d4ee5f0e2973ded03a15b85f2d483977c93fe30e18d8fda41fa4115c63f2f297";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for NovAtel Oem7 family of receivers.";
    license = with lib.licenses; [ mit ];
  };
}
