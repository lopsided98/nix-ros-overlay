
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-interfaces";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/rolling/sick_safevisionary_interfaces/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "a6e776a73d9cfeef04bb7253b72fa32b2dbb6eb78bbdfd8420792acb8aba2fc5";
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
