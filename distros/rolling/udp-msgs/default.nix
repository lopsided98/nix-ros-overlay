
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-udp-msgs";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/rolling/udp_msgs/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "29f62117c6c09e85ef81531aa073a805f40abb85b1ac62b08a6efab325461135";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS / ROS2 udp_msgs package";
    license = with lib.licenses; [ mit ];
  };
}
