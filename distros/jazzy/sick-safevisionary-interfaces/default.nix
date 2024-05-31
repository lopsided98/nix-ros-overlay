
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sick-safevisionary-interfaces";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/jazzy/sick_safevisionary_interfaces/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "6b055be639f6f4c7238b61ee60d27b8abe1750849e8fc5eb4a61c3bb8e10c068";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Provides interface descriptions to communicate with a SICK Safevisionary Sensor over ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
