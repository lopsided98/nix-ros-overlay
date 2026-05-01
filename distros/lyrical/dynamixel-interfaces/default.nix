
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-dynamixel-interfaces";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_interfaces-release/archive/release/lyrical/dynamixel_interfaces/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "056b28475d8c2182dac9bfabeda54764a919232bb7972a45441b32ece6c6ffb6";
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
