
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-marine-sensor-msgs";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marine_msgs-release/archive/release/jazzy/marine_sensor_msgs/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "a712504a7eff3626fcd4bde6cdaa4940c1d35bf6a385e5868665b85a11104890";
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
