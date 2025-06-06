
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ackermann-msgs";
  version = "2.0.2-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackermann_msgs-release/archive/release/kilted/ackermann_msgs/2.0.2-6.tar.gz";
    name = "2.0.2-6.tar.gz";
    sha256 = "3c7fd12263239ecc924ebafd5b8d45030f3e19c09b5c9ae2174190c0acce7d94";
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
