
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-kartech-linear-actuator-msgs";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/foxy/kartech_linear_actuator_msgs/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "fbc10af8d2f82c0b881997c75d5e450044ba7cdc467439147b76c8d51314f22f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The kartech_linear_actuator_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
