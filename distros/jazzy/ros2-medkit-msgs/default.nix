
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-msgs";
  version = "0.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_msgs/0.3.0-4.tar.gz";
    name = "0.3.0-4.tar.gz";
    sha256 = "1783adb896bb9a7ff181b1c343ac411b4c5126e48085a55ef919851e54db9028";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 message and service definitions for ros2_medkit fault management";
    license = with lib.licenses; [ asl20 ];
  };
}
