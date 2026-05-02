
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ackermann-msgs";
  version = "2.0.2-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackermann_msgs-release/archive/release/rolling/ackermann_msgs/2.0.2-6.tar.gz";
    name = "2.0.2-6.tar.gz";
    sha256 = "3c81915f7ef08e84a9073c7c82ec6b80a19c4f8e926b56ade85e009cc1d0c741";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS2 messages for robots using Ackermann steering.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
