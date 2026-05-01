
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-udp-msgs";
  version = "0.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/lyrical/udp_msgs/0.0.5-3.tar.gz";
    name = "0.0.5-3.tar.gz";
    sha256 = "06e2cf454e1599bd3d2151502fe8464bfcf87e7bd147d4749ff8210e043fa149";
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
