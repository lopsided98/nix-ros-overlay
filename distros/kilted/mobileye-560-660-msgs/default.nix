
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-mobileye-560-660-msgs";
  version = "4.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/kilted/mobileye_560_660_msgs/4.0.0-4.tar.gz";
    name = "4.0.0-4.tar.gz";
    sha256 = "c44cd9472273162e1e5c7f662ff2a156f343cef223760117838c4f000a65f21e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Message definitions for the Mobileye 560/660";
    license = with lib.licenses; [ mit ];
  };
}
