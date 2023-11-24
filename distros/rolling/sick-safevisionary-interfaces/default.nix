
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-interfaces";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/rolling/sick_safevisionary_interfaces/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "87d8b44cde31dc26c329d0b986759783b8cbe4faa4194e64f4a4c51ef7268351";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Provides interface descriptions to communicate with a SICK Safevisionary Sensor over ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
