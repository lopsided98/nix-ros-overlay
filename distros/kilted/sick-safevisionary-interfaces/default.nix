
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-sick-safevisionary-interfaces";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/kilted/sick_safevisionary_interfaces/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "638c3e7642b1be7536926bfd6d53f855a644e45e530ae14ceaeb7c82209d6543";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Provides interface descriptions to communicate with a SICK safeVisionary Sensor over ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
