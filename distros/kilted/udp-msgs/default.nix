
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-udp-msgs";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/kilted/udp_msgs/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "1cfb83c6f1546595d25f9b327497d96561efd73b828e7984c4da645c76674e79";
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
