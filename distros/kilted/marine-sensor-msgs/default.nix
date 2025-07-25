
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-marine-sensor-msgs";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marine_msgs-release/archive/release/kilted/marine_sensor_msgs/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "94fb85c0172aad5bc97e8c677a93d9dc69588e6c185baddcaaf8a261a22787f1";
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
