
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-sensor-msgs";
  version = "5.9.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/lyrical/sensor_msgs/5.9.2-3.tar.gz";
    name = "5.9.2-3.tar.gz";
    sha256 = "af7ac28d64837ab434b0dc219bba3fd5d63a62d4a6bb2ff0739c64a858f0b34c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some sensor data related message and service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
