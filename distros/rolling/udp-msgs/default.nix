
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-udp-msgs";
  version = "0.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/rolling/udp_msgs/0.0.3-4.tar.gz";
    name = "0.0.3-4.tar.gz";
    sha256 = "f24bf58a57cc1903e9902d4979dffb11fb6e10ea6db8b433a45d5d9dfdc5c0ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS2 udp_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
