
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-teleop-tools-msgs";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/teleop_tools_msgs/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "f0275cd423597acfe1f80177f0f04be9946897f02a9f0c951d29c485b775bbd3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The teleop_tools_msgs package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
