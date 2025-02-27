
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-dynamixel-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_interfaces-release/archive/release/rolling/dynamixel_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5471ee8d78d167f58ad46f90e3fe23925dd673224d660f0f36e9ebe008ba74c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "dynamixel_interfaces contains base messages and service useful for controlling Dynamixel.";
    license = with lib.licenses; [ asl20 ];
  };
}
