
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-novatel-oem7-msgs";
  version = "24.0.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/jazzy/novatel_oem7_msgs/24.0.0-1.tar.gz";
    name = "24.0.0-1.tar.gz";
    sha256 = "3e66b68d38d52a01c9e8a910f26c654f9618ee1b9437bac6d76e1965b4295428";
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
