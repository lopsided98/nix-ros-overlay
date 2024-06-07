
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rc-common-msgs";
  version = "0.5.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_common_msgs_ros2-release/archive/release/jazzy/rc_common_msgs/0.5.3-6.tar.gz";
    name = "0.5.3-6.tar.gz";
    sha256 = "217ad460c1bf09bc77a5148ec2ae12bce5aff1857f99de8e16edc4815d157142";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Common msg and srv definitions used by Roboception's ROS2 packages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
