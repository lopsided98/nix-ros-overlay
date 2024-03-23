
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-marine-sensor-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marine_msgs-release/archive/release/iron/marine_sensor_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "b31e44f46a6b9613ec39bedd1bf0a5869474818e82640d03b01c3f4ebff9e61f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The marine_sensor_msgs package, meant to contain messages for common
  underwater sensors (e.g., conductivity, turbidity, dissolved oxygen)";
    license = with lib.licenses; [ bsd3 ];
  };
}
